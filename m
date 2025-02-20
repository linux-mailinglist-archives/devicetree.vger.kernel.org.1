Return-Path: <devicetree+bounces-149071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 82084A3E2DE
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 18:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2066E7A6104
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608132147F8;
	Thu, 20 Feb 2025 17:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N7C2L2uF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BB821324F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 17:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740073379; cv=none; b=hnh5Y89JS2s3GdsWSU4V02heGPRxHn3Pd4HU73wNU5Agv1mUXMW8N6DxSJ7nKcLiVQxcpQQV3qXipJ+lFTzxuZNnXjJOwSumACsUuQapdlifjyu8+6DT7EOSbYDXVX8l0xJTN20fdPOOSdoU3oG8HXaPsg1SfpdmEjaPgIUqLEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740073379; c=relaxed/simple;
	bh=Bvqj2Bvxl3OYmN+DIORaL6pwjqZMUxhczbq8SpPpcBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F7FgZZyNaXF7AchxbAqye98xjbL6Pgpku2QisoS8/OkJ/R4RkQ5PMBJiJmp8O5j6sWNIV9WXAapl5O/rx/n93xqOuDZzO9Jl0quSHIWVK2vlFiDJd5IsvVDh77iuwXhJtXa4iS/hdEwuj12D8rmGE/eHhzFCesvBSrWvrxGBDVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N7C2L2uF; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5df07041c24so1795112a12.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740073376; x=1740678176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PIvr/zIA/fHFAIJRV6jomca+cYE4/Uv6vfvvU7Z0u8E=;
        b=N7C2L2uFH2X7wa2pRPrsE5yQ/boQzwYncXn1Anb4vIDeQRXFuaepRjjCOp3A1IlSf9
         L2UrrECv5qfn9J4dPO4DdIbx9An8wCdtQY2+r72tysx2xA70WRMcalIEpK2MHLsBHM7Y
         KnTeIiUdrfxD5sdtfd8qliJDGWFKN0Dq6JH6dqyikQryM40/ysAntczeEpecgfhq3DF5
         hirue7FyT3l+M5NWW722dzyWtpLJLNa+2RiSEfQyFb4ibEHfm93JjtkOAJ1jgOPdYhv6
         ijU60Td2xAhQ7AOCOn9sEu4AqUwxeinYvEviyqgVxvi5K6iMwpudxKaUqjDZ2ahVpr4B
         P4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740073376; x=1740678176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PIvr/zIA/fHFAIJRV6jomca+cYE4/Uv6vfvvU7Z0u8E=;
        b=u6kHk3yFWhWbfHZCLfprui10mP5YCFT1GQhbnR3nu+znRYVL3gS70YurYiCvTdSNDV
         2ZOLd3rBgdbcYUJUw4d0seLBfuVEiHdV2QV6v6KUnS6migroKT1BM9H+ldYDhK+jd646
         E31u0cOz55KrNscLAgyEaKrUs19jnUgpZUPiM6I5tmRvdTNw9n3QAZWinxf9WjOGa2F5
         CZf6bDevCbzlZ6M1R/6tEJC2/ishk21lD8i8Qp/Cv6n1j40oJt4KVjlbxyp6tAX5kT5E
         FTFIS6h/FDDZYfAUg3G0zT30JPz4q/eQkxC8qXUQ+JTQTalKDZliy88d/sodCyPA3PVB
         lJlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVujEyD0uvX57XCB4WExGusqdnYOulUPxYlLisgdul84e65bUAJuEx3q+65AfM0sxg6G6Vfg2IUpFlu@vger.kernel.org
X-Gm-Message-State: AOJu0YwkSsTf2n4BMsDM44o4uPgqW721mXojBw4TlSdoPfWMoaGv6SZ7
	gGVYGlbZ0weRuUJttVBZLE8VT2locTZ4WaV5rsUyxRRJr/V/svUbvIMuBCDYGqw=
X-Gm-Gg: ASbGncuRQWrJUCrgslnja6tER+IpQAc/tbu1g53nss4f1W3FB1fssClrRmOxtmDTkuC
	oN2vJ0dsQKeqhQf7Y0Ax2wA4dM0aOqDT2BS4Pj1dbivuFxquPSZPbn/OIHRost79z+SswgSdkry
	jd6tIba++w4MdW3UmAT5Ci4luuGihgSSP9ZAqyRJPMjZtIn1DoS9TxpJjQaUZ3WkC9/9Lsmv74L
	Cow6WJNaavb+CuT1HpHHXczeid4xFhlFe1lSaN7thY1ouDSeSZvmdrjNSlT6cWNBIoS5GoaY4dQ
	VAM7LxHcyiM3qw==
X-Google-Smtp-Source: AGHT+IGQVC2etDTib4uxuvWzjjAQAb9eZZOOrQ8eRCihV5lRcYzD5dmzSu0YUxjREXP9QcJeRsKGrg==
X-Received: by 2002:a17:906:31d7:b0:aba:598b:dbde with SMTP id a640c23a62f3a-abc099b7812mr23712166b.8.1740073375789;
        Thu, 20 Feb 2025 09:42:55 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8190d1b6sm1014496166b.36.2025.02.20.09.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 09:42:55 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 20 Feb 2025 19:42:33 +0200
Subject: [PATCH RESEND v5 4/4] arm64: dts: qcom: x1e80100-t14s: Enable
 external DisplayPort support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-4-380a3e0e7edc@linaro.org>
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1261; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Bvqj2Bvxl3OYmN+DIORaL6pwjqZMUxhczbq8SpPpcBg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnt2mWEWlcTVj58VYmaZ+QdXK1+UQ82KuTSVdj0
 uFPFl0UQPyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ7dplgAKCRAbX0TJAJUV
 VgiSD/96ILKscjqybjFGzjmSG5oFqQHGxI80ckWLkm00/fqbD/feT4h7nuq073Pzjp0fc3JxSlD
 VRa5iB1aSeoRxZragYyYvicX5x6PviB3VH0Rqa9OUPwvjXg3j6dqs/4r3z/5kz+RqWFeRgWzixm
 Qf+pXyAVkEEuCoIIfRj1hcd0/S4H8NRTeXYU5AJDe5xGtiD42zm9pVQ3GqDxFBJpKtt0pBCz0Nf
 yiRWKKI03opYAkibrFuS3XV2gY2auWPBHXcfTkntrrW1Ucr2QDrFuYc9PD3H38W/x/avFkAkzEd
 WYpZA43S0QKsUm/6Cr7+NZXnSRTAzyq84pkTPYgADl8jgDZf1k6hS5bvOqId4nkRLCIBSCUhcqs
 BG5sxcHXOYkDw8JQ6rl4tLIQstBkW9zKnetYd5edd2F/bihWa17+1uKlsBSzyT48tci2xBYg62a
 nAtf9sHHcn3/SaEupVmXSJD2RL9MIwpnUup52x2Qi0BYAznTHhP1/0d7NTrBsnQi5TZUoMo9WVA
 5Fe7Qk+CEqvo1H75ff5ZYCgXenGBz3pEDAQ9LIsobsEkdfomL2CvC4mjGg8zPZgoZTOEs5UZasT
 qGeQb4oTiaRVHc1hcm9w1aoWdFKF6piNvcEdWiqO/QbTLBfL//Q5Ir5mRn0ZIXvi1aJdsrpm6Xh
 1K8Iq19CJdv1SNg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Lenovo ThinkPad T14s Gen6 provides external DisplayPort on all
2 USB Type-C ports. Each one of this ports is connected to a dedicated
DisplayPort controller.

Due to support missing in the USB/DisplayPort combo PHY driver,
the external DisplayPort is limited to 2 lanes.

So enable the first and second DisplayPort controllers and limit their
data lanes number to 2.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 8949afc2f10e8fe912ac118335f7dc471566cf8d..850fdab9f0b1d38e7b8f5f81f7187576357c4514 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -924,6 +924,22 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp1 {
+	status = "okay";
+};
+
+&mdss_dp1_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;

-- 
2.34.1


