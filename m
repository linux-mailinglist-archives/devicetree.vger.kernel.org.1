Return-Path: <devicetree+bounces-259812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CjmD6yMeGmqqwEAu9opvQ
	(envelope-from <devicetree+bounces-259812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:00:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9386F924C9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:00:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DFD003013DEB
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E1E33ADAC;
	Tue, 27 Jan 2026 09:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t2RuSAy3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8252533B6E1
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507873; cv=none; b=NAiSygSqbwj9ASxDpZeGiWf1W4Xx6Ohogk/dw7mqPmWgBlFpEHDQUv5HseOXJdD4hFIfpOl79d+RAYqKUil41DF8Owbk5CWiRUYrZ+dX1sUDQi9FMf5oW+0QcnxL3AnpCLBkO5vWS05RRGWUkSSi6ulKNsO1/IQhx8C3bhSOhfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507873; c=relaxed/simple;
	bh=gSbiWZ3nnwhx0HYBWb2dVDb/9iL5lwNnvS44cVKbvhY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e/Vh4iPs7HgNAIoZZDTHTk/cyPLMIedqGzAw6w0AqHBid2rFr9bssrqu8FKTW9ITiRpEFgo3wTGIKeKwu5ukjkc3IvJH+yDtsTOKMxiMdsdPe626tH5zLEK4/SoyifG2Dj0s2IjkyX4lw6DeqK/eqXPDWlrUyyC6A9nyTUq1woE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t2RuSAy3; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so61781595e9.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769507869; x=1770112669; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BpvSM11iZ+VIl5UylAE730s9GzN2gw5t3lFduUFl6UQ=;
        b=t2RuSAy3K15j69TUhkNGVZl2RYSlDVL/TOOhVSqoW/NJO3GqYzu5B1zFk6qG8TLSzM
         VUkSlRJMtBVrVXu2JmHX8Zlq9ILqtmB5mDS2/cwemVYP2zbRHHaKCJPqXNkeeHdN44fl
         +qY/3e2MKrlanhHaUgaG9u8UTBqF1Yg5ZX/ZbXu8vUNx0XGwfImQYF/0Y1wKg+4rh3xM
         pD2GPLcVvTTKLFVXUFq/0ZkkKq7uX0CaFYht/FkKVhorHMZ6TLKDWmWIGju5vjpzWtCx
         kwwrQKQ5wdUjpsTUONeavcXIIjj4Wmt6xU827mLK6mwQdJgIOprb1VASq8ZD0c5mT+3B
         7d3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769507869; x=1770112669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BpvSM11iZ+VIl5UylAE730s9GzN2gw5t3lFduUFl6UQ=;
        b=wRI3TKEVBFlc98f2WEvKQqwRjLUVV6Uhf/CUTxqSDbs7LoGG7euRCgjXCIy2RBGZp+
         wtmktsT0WvR+5YXDWsTVoMXqQp8TW88JqO3qbxNpmsuhGyaCY9Sjq0LL826NbXWiGeMa
         JC/vfeBvSIS5cnEWLrBg4hFV+2GKICs3XcIFpouFFT/L678eydmsb3deehddpr2GAt7k
         5pULlRr29z3l3WYrPqOVW0xIC3Wx3UA9YE8rfyuFvct+PpoEXJrnA5geUuDk5cfCtcZt
         zDVF9sSzBw+pE7m0/B+jLI4ucC44iB2z0+0vnNJDpB1HlzBMVBc8XFsmOzJSqFkbdXVg
         1Pjw==
X-Gm-Message-State: AOJu0YxW4beWLE5n4BcJLaen9SFeEop6J9X2frHLNWbACRCBKQ8a12qi
	rflHMiD/R74AhgXnrMG46PJT/njWIbDFWNMI/lCtMxnR86WsTDHk5A6eaQiniE6MkpY=
X-Gm-Gg: AZuq6aJ6D/dA7I2C8bjuWQ+puCjxwG5swLvVzR+DwFaZdHOvr5PzuZJXn5reYT/Jqdo
	wsNkUUc/2zcDNL2FKqikwG8nqTMOyoW4Io+GTev1Rbuq9Etet6qt4AKaTRVSpd73V7YJjn0DYrV
	99gzHfM9wsIzE7JmcPv9CuutlbTexyPTlcceqlrC6gL5Y41Ms0QUZfX50ysq0JSsCyCcJeoSSoK
	/Swc92xEnMsEMNnxqoYSpy+dbCiBFucSAHwPlLrU/jGDuZJ66v8Htz7c+AXix+Tmz+Y87O9uen6
	GKkyqC1ImwgxZ7cO57XuI8R07TuK/ShYCNGZSVsauQhr3ue7+5/SgdEe2K7qANIQVmNb/oRmvsI
	QHmaGAk4lUnJmniEgYvxi6CHiOjfMcRCnO+w070ILJ9QFS8ycXTMFpC9tHVjmsajy3Idbzz2sR2
	sqFJOJSFJCEq4Fkbl8iy2zea/M/vhQDS0=
X-Received: by 2002:a05:600c:8b26:b0:477:6d96:b3e5 with SMTP id 5b1f17b1804b1-48069c164d8mr13882815e9.7.1769507868824;
        Tue, 27 Jan 2026 01:57:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066bf93cesm49056225e9.9.2026.01.27.01.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 01:57:48 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 27 Jan 2026 10:57:33 +0100
Subject: [PATCH v2 6/7] arm64: dts: qcom: sm8650: Add sound DAI prefix for
 DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-6-c55ec1b5d8bf@linaro.org>
References: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
In-Reply-To: <20260127-topic-sm8650-ayaneo-pocket-s2-base-v2-0-c55ec1b5d8bf@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-usb@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-pci@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=783;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=gSbiWZ3nnwhx0HYBWb2dVDb/9iL5lwNnvS44cVKbvhY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpeIwUQjm7QH1p8rQRVenNqQ0wOOWP6xu0215VvBsl
 7jSVnguJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaXiMFAAKCRB33NvayMhJ0fKYEA
 DKjj+Z8YzdOvfOnzStvABIT7k4x4isAu30Z5CXb+Mvz29hh03cTeG7wTRJH565eZRDWPoHI6hlsk+O
 lghQtth1j1Bj9A6xh4ECqzUHAiG0TQjV7q5fUMkW8SzWm26L1+5CGPtVcm87qS3Yen0b+5tvYvgxz6
 TTEgeEYgtRwcHdadkjNJ5G0JqU14qQjbBe5SuUL1vBl+ZDk9Qv1kCm91KFO6Gn/g/CuQ6QDgrGx7Fq
 mJgLoa5rQgtu/Y1NwpO3isuBN/rJQ591y6uAhIIeeB0Ho6nONRW9w6FCp5ov06tnHm86iQ4AHaPs/t
 L618s3sK3FI+ATlXqBeL4YEezrCQrNJp4jrDOwCzuuS+m/VA2+kua1owqZZJE/kb2HapTJuOQ33/Uv
 9VjRaS1Qei63ln293HLt10bstkYS24I+dIJSPDUVM7O3GZOPswnUGaMcdXorpGME0zWJsQ72lkpeQ8
 oW7/+EdpozmLT9C+2KvgvBFX6Qk2tPU31WH+mCLLJ6l0cz8QgRYSEgJVuiAKVtZeeWif1IuCWFEBA/
 YC9wa0qsGXDhQAhu/iuSBZ0STVVAUOEL3HDtOKj6mLoJZIzhlbX9ST0yC6b+WT2Tr7oP3k74sff++m
 /XygLVHFHkC5UgxtwsQ1BypETfBo+w+LJx4oldHPIS4V/P464LimH/eMgrnA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259812-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linuxfoundation.org,glider.be,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 9386F924C9
X-Rspamd-Action: no action

Sound DAI devices exposing same set of mixers, e.g. each DisplayPort
controller, need to add dedicated prefix for these mixers to avoid
conflicts and to allow ALSA to properly configure given instance.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ec79ba904f5d..db769baf4d58 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5721,6 +5721,7 @@ mdss_dp0: displayport-controller@af54000 {
 				phy-names = "dp";
 
 				#sound-dai-cells = <0>;
+				sound-name-prefix = "DisplayPort0";
 
 				status = "disabled";
 

-- 
2.34.1


