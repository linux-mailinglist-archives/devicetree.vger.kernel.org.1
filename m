Return-Path: <devicetree+bounces-277846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH0XKMEUvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:22:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A4D2CDA53
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAAEA3131B1A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961FA3E5595;
	Thu, 19 Mar 2026 15:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FKspMqZY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C1jrnGK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF8B3E51D8
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933332; cv=none; b=Y+aZFqAVyKzrdLsqIsHzoxVyOX4m9/1CFMzsbtdcHzrfdRNmXWwJc3k2Mqon5UmMzYO8UeTupHsOkG3D86KdMBXR979ihCCpQs73YZXm06qPZTZC0zOguxL/K/fJAiMEI8Z0/mepvTpl0s5PblWJ0RYv2ljyar1UrTtemR91eoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933332; c=relaxed/simple;
	bh=Gf4FDhgmj1NlLjlZfra+jq2aSFIo2e2CUezDgfWKO/M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lPJLCoULVC7RQtBzmO+Xht7C4RrSlIgcvH552LW7kdtkxWmbOzTqxd50+rNKtMOBb24k6yjdg/HLOpLicmIzVsOvOZMfzNk2yfMdJySIhQsk3y78Jbaphpm+99s7zQRiJAYNXgE6SHkosdvctGepwf1LiZcPP9GpgJNDQzMYUuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FKspMqZY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C1jrnGK4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JF6XDd770715
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Trr1drIk6edG8UvbXd9UjXfqPOakCh62uE0dJzBQx7E=; b=FKspMqZYm/ZS0bOl
	38ro3POtyqxIbKxUi6qQ6FWG6XApammeF9gIuaFiKBFkxjIUsyRR6jeLfUYFzYaG
	hW7EJQ78lyudOYe10bYazp7uaCX3lSIjyNyQwhOaOQOU+04mW6i4XyXa0e1iAies
	ecHrQ6W8j1c/Exfdeh+EF7KyDRYRUCZUByDX3VehwvICJGouP5S8uoskHlnCaczv
	9k0Z6ziCMPuhdTqn/XnqzpWz4ILcu/VqTnDOmkbKDy/TlO3m6PyPVv+LMLT3hX6i
	cN2psA6rofOZKAJnghEb8TozDKzLTXN+RTb3pFa/Tyg0NrxlTauDyK1F75pLV7BL
	um82jw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00egbnga-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:15:27 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ffb295babbso1526343137.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773933326; x=1774538126; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Trr1drIk6edG8UvbXd9UjXfqPOakCh62uE0dJzBQx7E=;
        b=C1jrnGK4YJxGg7z/yHpUKjjO52qm5uSzQyA3NBvK5+ewKF16TJ4qJWyPm2sG3224iY
         0j59D1gBOIWhufCVi9OuTzJeBXloGRIyZQ27wa5x7xwROJb968a5rgCwX+FuuihJh8je
         jGF5UDTnfzykwPBmL/jemj/uQwSfjLGSUo+CDP5BGLOwkh/RdoudA9GjqeiybjhootsJ
         ReCZNFcp2ncsnjnfU0tkIqUt7ZbMXcfcDUdeGkLaFSuoGabe5AnN4KRNiG/M6YClEgXW
         36cxWJ8v8XqN/gmm+M90zzhgf78kpbkfoy80vCD5/dI+JCb8jGiBzX5Badu0H54hAPDK
         qKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933326; x=1774538126;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Trr1drIk6edG8UvbXd9UjXfqPOakCh62uE0dJzBQx7E=;
        b=YxRGFv5cRJcOiTWqf7IaxO/9MYGgRF7TFKw6VOXNNNapq8ZxyZFMMwPps9g8INPQRn
         Ydv+JzXfg3cpv1uqgONRTejpirUQFmgyb0kXtUetfsZJnt19ovmmantrhXsFNugJ9F5K
         tVN4qs18MdMskjZr6yfFP/vQ0xKED2TgJlLQ5h0HJMLl6OIxTCElfgtZxktKm5UmWv0+
         8l05WhUJBfF5M6ilZx6jc3i2EeYc76zTWwkPG+Jqjzu1xf36oxNX4i2j9J2IZwDiO454
         sOj9899OBFvhie9p0V60CvlF/X4Ho5njrRB6tZvE1Yoo3BQx57ROZKeTj930LQRA1Qpi
         yToQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPWAFJJBu3o4dSG5TaKDLVotT23n1Na4dyZuRd7QmYAwkB48md743W1kIbxJuFf6KolsmWtkG646x+@vger.kernel.org
X-Gm-Message-State: AOJu0YwRZ21vWQUyt4eCGAHoav2m9l/9RUGLx7OYuvYFu6KLS26J1zT5
	N/5fduyLrYbGbIMAvnOikoLJcFphDRAayqrGZSMopa6ZFGLm4ydbv3kg5HIxzzR0G9cc6nhxIxz
	RCTIHkTKdWiQdUwmFq/HATI34+ZROC0gYdY9Sd2N+S5PLL257QRJvIGZFmzen4XPu
X-Gm-Gg: ATEYQzx4Z28Z8M66yRYFjBdKgOHmIMWsKUB0nGelgLvz5Sbh/pKK95AXYp6XvqQoIoD
	TPztCE3YgvzcOmtRSQ59OUDpr6sbWf6h3br4JqdkaGzH3CiEcWD0AhsjSwtj3baHqoL2MbLd9Zp
	KDUk7lSiGY1dTJonl72jrWjOezYIvKpUnO39c+zdyvPidT5KYZik+fxseWccZecKTmYRWt5pnBs
	D9I0Vs3wnxsXNWahFbO+1XS0mm+qYLyYXJi+JImFfdmVia7hTc9+rorzRPLRmF0hnjb+1c6WNen
	FfffxTk7TIjsuC3GiOG4izkTnR3AVEP0jiOEwSWjxeZb3BvWAf3eUf7QALxt5T4pmxe/HyI+LBv
	qPatMk1u85WLUlsuof2SZsbIHDUQ=
X-Received: by 2002:a05:6102:290c:b0:5ff:a16b:93e1 with SMTP id ada2fe7eead31-6027d112d31mr3556692137.9.1773933326506;
        Thu, 19 Mar 2026 08:15:26 -0700 (PDT)
X-Received: by 2002:a05:6102:290c:b0:5ff:a16b:93e1 with SMTP id ada2fe7eead31-6027d112d31mr3556653137.9.1773933324907;
        Thu, 19 Mar 2026 08:15:24 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4e48ad5sm196652865e9.1.2026.03.19.08.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:15:23 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:15:15 +0200
Subject: [PATCH v6 2/2] arm64: dts: qcom: glymur-crd: Enable eDP display
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-dts-qcom-glymur-crd-add-edp-v6-2-f582e87ec874@oss.qualcomm.com>
References: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
In-Reply-To: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=2600;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=EavZDMB/9zQnwaREM14cjG1xoJnC4RuUiEhwa1BFPA4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBMFUGLQ1buHSzVH9a/LDEUELeNP6VJ/+rDv8
 e5jrXc/m0eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwTBQAKCRAbX0TJAJUV
 VotxD/9GsEZfOFnG/sK4imGODV3TYCrjgVjBHZ4Dup0dqywrxtbDFVn1spPVBjyE4Kjz/9ueo9E
 8l8zzK9b//2/tP6Pb0fDeQuGlmW2bgCkn2uWBfwUHVDFtw+Guh5luJCzEk1PlHGj04covXkZgLe
 T/tHnVuDMkEyWOQiSkLyh7oMokpzpu1Kjv7Vo2xK+XHHWZqkFUUz3Cn2KWKNVLBdARfW3Nc+byc
 HxM6XfXiAh3LdbTqMc7w8sBI9OTfYi+AzgsS12PjbEVg1OUbyWyqbHj/KZd+jDapsk2w9l1zVqz
 nqubuR2goKg0LpGWySGlgnaJtJCyxwVRoE3JQoBvAGQUGTCG8yOxnMG60XEHYcinnOF3w1yfKSW
 tR3NsKgLlf2P77s2DmqhL+fzkdqWtH2z7IH8Zpz3lJmtPwKjW4MEWEc2Smk9Y6eyV80C9n8HuQC
 RoP04Tj3/hUhPdxVCKF22b9qdPQ3GdQt3woSeXDl9shMQlyrxiIHuQseg2L1WaMIRgWN0Xg4IAt
 1b2Fq28BfIw1E9x6yFiaZq/py/RZFGlFykB82aOdd0lLz8IVPtks+PapwP/fvE8VnP9vEksoDMH
 T2BNE7MOQMHroQOitiyEA4hdEr/CYkRLY/rc33UWhb4VMi+wlTQinm0VlR5LJTpnojlqe7DVS3J
 CMLr72wVIzhKHrQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bc130f cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=68_4jy3stEaJOreQ4WQA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: I8jVUVkQ1Ww686F8c1Q4tnUhfcv0cGcG
X-Proofpoint-GUID: I8jVUVkQ1Ww686F8c1Q4tnUhfcv0cGcG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMSBTYWx0ZWRfX+eJEeVXsfONv
 pyfr/0MEDdKVtslY4MNtnKHUo9QU6jQh8I26PY3LKpnhm4F45i4WIFBNUp1/c08ugluNASztuBa
 SKf4fvyVDwRROASFpKA34wL5wWYR/ufhs6JaKyamKsyb9yUfBqnPWbI2W4YWYae4NVBObyCH1vR
 0JbiOxS0gf4bVVSAnUEaJ5sc1lHMJPSKGqDgwao7wvvmQONV6J2LnIuMvtGMeVQnAlY+9ptDlCe
 DZHZLSyQEDzArp33WEyrk9Vk5CnoRLgmJbTWs+zyHBt6WV0M8m6UF5cbHsU76j8KZGfMAnL6/CW
 g+aRm4oldWCftHVZzrmTij/hIrCq+r2B+4VJ+qkcyDi8XasEi8I9fIKhJi1JiFVy/dRMsaiehUc
 snbJAWiqE4a6mdDHAcsH4BIxPFEtdCl14nHoAjabCpjaPaGMV5P7FIIh4FpcUQTGTJhahSXMf0B
 F5p2jzCCYU5oOH9e6Mw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190121
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277846-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,0.0.0.47:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6A4D2CDA53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Abel Vesa <abel.vesa@linaro.org>

Enable the MDSS (Mobile Display SubSystem), the third DisplayPort
controller, and its PHY to drive the onboard eDP panel on the Glymur
CRD platform. Also describe the regulator supplying panel power.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index a7b30accbd1e..38cdcf662ba7 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -123,6 +123,22 @@ pmic_glink_ss_in1: endpoint {
 		};
 	};
 
+	vreg_edp_3p3: regulator-edp-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_EDP_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&edp_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -460,6 +476,47 @@ ptn3222_1: redriver@47 {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp3 {
+	/delete-property/ #sound-dai-cells;
+
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "samsung,atna60cl08", "samsung,atna33xc20";
+			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
+			power-supply = <&vreg_edp_3p3>;
+
+			pinctrl-0 = <&edp_bl_en>;
+			pinctrl-names = "default";
+
+			port {
+				edp_panel_in: endpoint {
+					remote-endpoint = <&mdss_dp3_out>;
+				};
+			};
+		};
+	};
+};
+
+&mdss_dp3_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&edp_panel_in>;
+};
+
+&mdss_dp3_phy {
+	vdda-phy-supply = <&vreg_l2f_e1_0p83>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
 &pcie3b {
 	vddpe-3v3-supply = <&vreg_nvmesec>;
 
@@ -593,6 +650,20 @@ &tlmm {
 			       <10 2>, /* OOB UART */
 			       <44 4>; /* Security SPI (TPM) */
 
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio18";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	edp_reg_en: edp-reg-en-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

-- 
2.48.1


