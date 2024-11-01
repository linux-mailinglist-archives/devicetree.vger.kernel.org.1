Return-Path: <devicetree+bounces-117981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BB69B8A8B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 06:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FB75B22368
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 05:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C09156227;
	Fri,  1 Nov 2024 05:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tXXDuyQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E627015530B
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 05:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730439133; cv=none; b=G68F9jf0/qGGZGKfiiFszC6TXEIKw/09saBeRCQj9RKYA03SRhxfuXxeW3BmYnvnnKpnk2mxOfCqSdD7TyCwtjuwwMJYfa4bAO8SxlNrMotg8QtXYj0+AJrsrj1ZIIhYln1U3jy9Vj676T4yuWeNLTRc7xPNxWidvMm1ZE1/4fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730439133; c=relaxed/simple;
	bh=Y4jlBxobgZ/gAL13FnyC93S0e2H24YRzN7cgVpg9BhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qBwbdxvfdKxbm3RjlpLV2oSPI4vqj434p2a8irD9M9eQSkQaID34pZ1r/oapMpAHTV9VWVFYW4smKWAdHupAlXEIQWjZQxgUxRwKCpw/q4c8XhrbmIABCSe1uy5ilxFY4Oy4mHln7VAjk1muokB4VJOU7XFRZJUUFZT5g4T0c1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tXXDuyQf; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d50fad249so1156512f8f.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 22:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730439129; x=1731043929; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dbg+pJFmpRdFZF0TehbUXHrYJrGTuopKyk0KMeO4zqs=;
        b=tXXDuyQfGcrTG3JDXRDQbkkPfWouf0z97AuXc9rdtvo2MtRNUig8LchcvUKaa86G9T
         cEx+U7iEi3MH093xG/yBe5/x1OFpTyPjWql19a5qCeNBodo4j/xXeW2C3A4VeM9fZkSR
         BIKszv7X4sY8fY/qJAcbcc+btz1OS8ptEv5DFioeFr3BqPu3W91Di5tNsKWmenTn8hN2
         F0a204hJEnxI4nsV7CPrZRsML98M0Q/M3HI9EpQ3VQ+zNO68jNIiCJxnjOviNRk//9uT
         UGJ9WCb1OQEgAgqlNuPzbGOy/hoKXWhaYSrFf9j0rENzVXT3z2h9wOSXws5LKN6OUHBK
         vmgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730439129; x=1731043929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbg+pJFmpRdFZF0TehbUXHrYJrGTuopKyk0KMeO4zqs=;
        b=f+rGguc/jGY/i8B0ROpS37ZyB9H/UfQbb0QsniQrYkSFI4DWb1py8zk9Xf3KIzq47O
         FysSiNZB+PL8eWJ9iY848fMUKH3YtMksVIYhX2dF4+Ru3MWr10ChSfxYm1qBL83iwJEg
         fH6WSYXTp/MT/9Q5eEKhPGn8a6VqCN4Qm729m0VCSCszRD8C/vv1ugnZ21padNKDAygS
         CGRw2dD+CK4o4n2ZdvA13KfcEaEUuui1E1d+0QF3EUOGAtd5kpkCQ5HthgK4WbZfAafU
         bCuhgp2dXLu6Ch0ZB+1M/Uoh4ugF3HCaKGJbfK6E4vj/QqrFgiFpVH6RA6M0XInyedub
         X2VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfa/ciDp+r7ABdOwzU3f4nAhN5H6VYCDgfdiOUy4YsShSf8wqz6ga5aRbMtGLameb39l9/THsfIb/F@vger.kernel.org
X-Gm-Message-State: AOJu0Yyec9JQl3wDjFP1AGD8wUAQpl0zY17nQ/ftkiTuR00OV4dmPs3z
	n5cud/gLrwl+382+VncIePI837BmeEq+B/ST6Og0VdSK/JcJ70hcWHoJK2/SO7k=
X-Google-Smtp-Source: AGHT+IEq5IoKLZyO0QI95FVwn+mkHbo9Odfy10oRy4ZnfNGbpFsQaTmT20kzgJVE6OtilB7Tb3vjlg==
X-Received: by 2002:a05:6000:e0d:b0:37d:3def:2a82 with SMTP id ffacd0b85a97d-380611e48d8mr5890214f8f.36.1730439129020;
        Thu, 31 Oct 2024 22:32:09 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852fdsm46960505e9.34.2024.10.31.22.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 22:32:08 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 09/10] arm64: dts: qcom: qrb4210-rb2: add WSA audio playback support
Date: Fri,  1 Nov 2024 05:31:53 +0000
Message-ID: <20241101053154.497550-10-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101053154.497550-1-alexey.klimov@linaro.org>
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for audio playback via WCD937X/WSA881X. From DSP
and rxmacro the sound stream goes into AUX port of wcd codec.
wcd codec decodes digital audio into analog and outputs it to
single wsa amplifier hence only the mono configuration.

The audio playback is verified using the following commands:

amixer -c0 cset iface=MIXER,name='AUX_RDAC Switch' 1
amixer -c0 cset iface=MIXER,name='RX_RX2 Digital Volume' 80
amixer -c0 cset iface=MIXER,name='RX INT2_1 MIX1 INP0' 'RX2'
amixer -c0 cset iface=MIXER,name='RX_CODEC_DMA_RX_1 Audio Mixer MultiMedia1' 1
amixer -c0 cset iface=MIXER,name='RX_MACRO RX2 MUX' 'AIF2_PB'
amixer -c0 cset iface=MIXER,name='SpkrMono WSA_RDAC' 1
amixer -c0 cset iface=MIXER,name='LO Switch' 1

aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 76b9ae1b0ebc..b37b872f1a89 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -121,7 +121,9 @@ sound {
 		pinctrl-0 = <&lpi_i2s2_active>;
 		pinctrl-names = "default";
 		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
-		audio-routing = "MM_DL1", "MultiMedia1 Playback",
+		audio-routing = "IN3_AUX", "AUX_OUT",
+				"SpkrMono WSA_IN", "AUX",
+				"MM_DL1", "MultiMedia1 Playback",
 				"MM_DL2", "MultiMedia2 Playback";
 
 		mm1-dai-link {
@@ -163,6 +165,22 @@ codec {
 				sound-dai = <&lt9611_codec 0>;
 			};
 		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_1>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&wsa881x>, <&wcd937x 0>, <&swr1 3>, <&rxmacro 1>;
+			};
+		};
 	};
 
 	wcd937x: codec {
-- 
2.45.2


