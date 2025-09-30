Return-Path: <devicetree+bounces-222804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C70DFBAD1EC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:57:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37D093B5E94
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA78830595D;
	Tue, 30 Sep 2025 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YnmsVLG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CF03043BA
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240643; cv=none; b=U0dVd5YQSLeQB4otf+X0e9AmfVkCeQRXIC7k0GbTVWrWWH1a+ctq53S0KeMcsUkxm0eBYuwp5CKQsZjZaNSeW+6XjvaAhPNVEW85957DkKS9zIYV1mZ5o0YzNUEe+Pl1eT2NXPZKAkcvcG5mIYJXr0aADNxeH+7qJMeMjYMLXVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240643; c=relaxed/simple;
	bh=VdrjHbZY8p6JBS2yBxBjZF8UPgGBrsrohOZQSKM2ILY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TZZY3hrPJKzvs5+kTQtYCL+DsQC0cChY9XF/arjIRQsWkn6RxEUEUEDDxRB65CjukawWeU5SxuDF3x9KpfobF2d1weOR2C/ZECAmGy5yMypDyPvDRqvYEeQ83LMk36r4MKz1WLucmtIdhrDlz5pFEd1Et2fBJ/PaG9gLe4J00iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YnmsVLG1; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b40f11a1027so323539166b.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240639; x=1759845439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5IhQc/KxHi+cDc2kNGR6DJ1hzrVsKnRbRYRWEuK1eFg=;
        b=YnmsVLG1GKEDlBWH3NHQeJz+1pBjCRM3cISRPIOJSAjbF6pNP+JuNQSoL+qXt2cQtU
         18vGO3YJDMeaWQDNsm5TkW2J7InP4yPF3RVyRWvFP90rlbxm+ZbW64opvTS+s9cKeL8d
         vOEVv2TtQ9whNkXzM940UHyIRJTO2bVzb/yolDtBRs9SF2vo8DFbcYKFpgmEkCnDoVvR
         eVAbzVCOD7arZ0pIB0QM/63Vx9PK6mYNxtf9BRXoYLP5nVQqR3b30OrRAjL7Km0VbpZv
         bX4h1Zuht6UOdNZG2pZMC40x6DksXizwIJp0QGUXFLZ958cmgqG+ZEa31n/4n1fURCzp
         wjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240639; x=1759845439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5IhQc/KxHi+cDc2kNGR6DJ1hzrVsKnRbRYRWEuK1eFg=;
        b=NbNYSxguR6j/RKNJ62alLzsDsIUBJHSbryTALzHtIbMMPiiuKdndJmajWFH8DTR2Yr
         fM3Aeb16UfU0KQjsoOOYmWr0iZI+k8NNkvdG86N5ux0GV4RGEFP5iP7S2FyagLaw1fVN
         uwqvTyxsk5BsRGEcTGpVCPwtAoXEnVHtG+H69teOCTkZb5crMm+7GiYd7tzPqRvX1Ov1
         elmdfE4JCRRrEz3SVZohbVD/VbfvaYk4G1UIKW0ZpFsAqi64/mCNfYt7fyiDveLI18K6
         XMgW2b3tpzvWamnmnfixNNDhMkBtBo4cV48GeAWDK/FbAaBJJ9Xf6a3sfFkkA/jIqZzN
         AITQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOxNbM0FPlnqwUbjiKexqbZagz8wzltxf42gzXMNkrekHOoMDgWY74JJ0C/FGS5YwGfBeH2VEIaNut@vger.kernel.org
X-Gm-Message-State: AOJu0YyLtTAjDaI81+Cq1F8f80BMUolZDFqGOV2FKT7aQV+94OZPawyj
	4dE/KIdw0YyXUsZ/9rQkRwK7j5OWS6KrKuocZ/JEZJGiSvJo7AGUToiLUiQ17/N0ILkCLbvQkD+
	cMF2PKPY=
X-Gm-Gg: ASbGncstk0lVps4R0UmO3Ypbr5OdmqB9xEcW/M176hVp6AO9KSYfcxP0aeF8uFvpTub
	kZKWk2MRofeuPl3ol81eYthBTkvT8nPy2kjWSvZWK8lpmspDCm6xovFBiIv4vbc9KegN+bagNva
	i0mMNF3QJkE1FDrmaXBMp9i7kogtJ3R+h4qf5Y0xXWAN5Yz8I/HceTeR9RmpztMcS+kSYk8nSwA
	CE9191ISmKPF5tINff11O7DT5ah6N8rdvJTpxPaesuh5k/MtGQWxeCcLkZkLe2bG/4Ub5Ek7v0N
	5Eb4sXiyA+W4hSrnnqIo1ErOHR6hhHfvs/ZshfbgLO6fxie02+qf9T0fxx6ndVs23zAaN/QBQ5e
	tJuXKTSIMM2KtsHSdgrPwa4GD6P2snODxiXB6q5nMNTykEhJC7LT8HXu7y8vrrJKbPH87gc02fk
	MQD5HD8EWnCNRNSrNxOA==
X-Google-Smtp-Source: AGHT+IFTx+BUtdYFfL6HuTb1lAb8kQTNr6zB4Xa+33+fIcOgSz29G8fLSpBMc7T/d9jfJ56OBR2HxQ==
X-Received: by 2002:a17:906:6a1b:b0:b3d:73e1:d809 with SMTP id a640c23a62f3a-b3d73e1ef65mr951599166b.48.1759240639542;
        Tue, 30 Sep 2025 06:57:19 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:18 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 15:57:04 +0200
Subject: [PATCH 4/5] arm64: dts: qcom: qcm6490-shift-otter: Use correct
 compatible for audiocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sc7280-dts-misc-v1-4-5a45923ef705@fairphone.com>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
In-Reply-To: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=869;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=VdrjHbZY8p6JBS2yBxBjZF8UPgGBrsrohOZQSKM2ILY=;
 b=o0gnni3kPdNO8veSF1wAx3y60Q78M2zZesq5qeidQB8NNxrF5O/6nLJWVHRu7ouKyWaZEAPrV
 ory0fpzeVztCEIjjhL/6QuRUTbzUT9onXoQyRzZnEeVi2/Wb7hk6jyw
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Use the correct compatible for this phone with standard Qualcomm
firmware and remove references to power-domains from a 'reserved' node.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index eb8efba1b9dda422dd0295db2a52420a1a23d070..6be2ebb2958f5535666ddc3866d2eca9272abe59 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -568,6 +568,11 @@ &ipa {
 	status = "okay";
 };
 
+&lpass_audiocc {
+	compatible = "qcom,qcm6490-lpassaudiocc";
+	/delete-property/ power-domains;
+};
+
 &pm7250b_adc {
 	channel@4d {
 		reg = <ADC5_AMUX_THM1_100K_PU>;

-- 
2.51.0


