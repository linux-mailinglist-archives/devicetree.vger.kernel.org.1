Return-Path: <devicetree+bounces-259757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XlIBK4d4eGmdqAEAu9opvQ
	(envelope-from <devicetree+bounces-259757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA8A91157
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 261B2301BCFE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D1529C351;
	Tue, 27 Jan 2026 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XsePhQ4Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NwTA5ADo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D7D29B22F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502852; cv=none; b=Z/o+iq1ZreemEe6ktsAFJPzaBgCl/LzYA1NeXxPc7kTGQUtqjjMpRoGtDv4Qh41O6PMUjcAIlzsQnNiMuoCJiTdyvVkDI0cV0xFENFSKS12FaBbAMo3O7cGdlY8ApNG5EofbfE5Q1IqJGs+Jzl7+7hIj0HHJKdKHKmsdWiEYi68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502852; c=relaxed/simple;
	bh=MvtBSyQj0js4SLSuEusISSHt2QHdpq7vCZi91SV0Fg4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lbSRmkBlCizGc0q/Ep4AHqx6kXIUoMaqriUeBkZ962+W4Hu/ke4nNnqKLAbFvhV8Y4/c4zl+85oRVlEtbePaZY8/O33wTB2tJqxvYxgvjdif/FABdsBomdyqlRxJwxg5PGaCGZniMqcsEml5VjwQrDsWoOgRaQ19uRvDoj0f1o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XsePhQ4Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NwTA5ADo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4U2B43857785
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rqeNWfh/IEI24TeavFXiOZ
	VkYq5SdqLl7y/ovCQUbBI=; b=XsePhQ4YZv41SM8f68lT9mlh5me9/T4YSOXiol
	8+w1NvQ9DeoyZJqCUbbIpZ4C/kVDuGxuTPdRtQteIuexQcTpH/YG5UXSsXH3ZtQk
	miczf4mKUcjYMDAF60z8KC6s1PxbWfQbv+FAoh285zAnXfrfmqka09cT9y+O4Edi
	AifNDAsnx5hcs4daJD36xFPr13QmGcmBRHUFEpjpDurUrYipxa5m610qjAI7VqeN
	kAZW/YhMFrGfhwtP0Amdh8d6rixIsgUZd+2JrTrUbDAJP5GlmKPAw7b4YoNgO+17
	NBMTZPKJrZ4+wypIuW2XFGo06gy0dNRLj1CIXAbk6O3LTVrw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs1x19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:34:09 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-124743cf760so721305c88.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769502849; x=1770107649; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rqeNWfh/IEI24TeavFXiOZVkYq5SdqLl7y/ovCQUbBI=;
        b=NwTA5ADoUjOzIlETB5tpM5uBC8jwYAgIMCyzbr9dhg5yFkg0Q7Bbl8xSVNNg34SCBX
         t6o+k2r/1y7NQB8SxR1xVzx6YExnNNSSVa25iFdb2KRcF1KklBbyeuVGMYSlk7gzd6FT
         tq2DmuzLVP5DRKtDDNdhzOSB8lc1zcPhxrA45Jt8ceKPmdUqqdlDq0HVG+/a2f5p0jkf
         bkSbircc4tmn+uT/RwYLx3K5z9YTeMcumVJnxTYjPelrq4pP0ZOB5VlLJCC3dDBlKti6
         r0iiAg9/d4JkbDR52forsiCG0GN3d+ys9TLhIc3eeYHlnazDMkid+XJpomCzHC5b+yD1
         1u7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769502849; x=1770107649;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqeNWfh/IEI24TeavFXiOZVkYq5SdqLl7y/ovCQUbBI=;
        b=IZh9W5Rodt4k5gmVSSRQvbC4tENrmMqVq1TvkYNTy6OzRzV7jcNckyccPCtyLRkVbE
         3lEMXQS5CPtCbudXgTmuXUtsswgguxQnP65dYEDRQVYtthsQI+62Q5A7ITbakS1v+75j
         4tyF9XLRC+eqo6f3TtPgNg9nV9Kws7MlTEFp5wLOJWveI6WJCOfAu6fKBpfw6JZ70yJJ
         s1uZfyGr1SZBNLUHXqi/be/MufuXcRIcvb+O+EYOlwyd1UwwkHMRLajHC1NG7cRbTbuU
         dIdqmyoeOZl9Mdq+iWf9+NWWTVsrjg4V0bpQGHRXp62YqbtP0S4qbgZ/6II2yIK7uAM4
         5O1A==
X-Forwarded-Encrypted: i=1; AJvYcCVQk9Cuxo7QCdQ07TkmL6lpEJHxgfwlFbFUy3BL/GXINf84yujkkRGTYXLnFaI3nobIjDKvTCoa7NV6@vger.kernel.org
X-Gm-Message-State: AOJu0YzkCQMSPzLfd+ovo+NJaQ0ut29hfNgOoK19JlLQdeWoq6rNHJzS
	/Hmr13fTh/fdjaObuKRKYYknVZO7lPGWpWiRhR3Aqbbl99q9YTArXIYbq3OFQuJR9t89LTCgC9C
	prJxiGk5NJ+/yEQsDDq7j8gxORTk6h1xSZx1zFWNbz8loF7FzzxHo9NeixVi6bSsl
X-Gm-Gg: AZuq6aLSBjtjyuLGXlpMrmkQadIsZq6Jxy2OMWOZTGNvh1jLQ/SJbFS0pRynYgv7Smn
	zihIZZcKYzACpCP4hlmGsVwxqxS9UsZG1fD87YkMaH4fO0kCB6RkVoZc1pymOqztMfaxFPCd3eC
	aOFICSphSWxMcCakbSoQLXRT5/v5dB30Dz1RzTPKqnQ36HBpfRwjWnHsxSgVj1r5dvzibrHYvgH
	SnMxG26ibGXxbHpc1kcOhmkDirZnSCG05A/Ue6zycJfOPeVEYb3o5PPod5sVa8qJ/5ssT64e0k2
	bHQ6hEaf5LWHUYr2h347KfAM8r0gEDrgNpCvsjhSEJ2CW4hkAnYV1hA6h+QnFB9K7vLI6Yr5rIo
	DFsO5/zEC+VFvcctscyB4o+dumIjx+G+RWzN+tS5r7PqDhccf75Jr5cv4xOb/
X-Received: by 2002:a05:7022:f96:b0:119:e56b:c75c with SMTP id a92af1059eb24-124a00deeb4mr607156c88.33.1769502848333;
        Tue, 27 Jan 2026 00:34:08 -0800 (PST)
X-Received: by 2002:a05:7022:f96:b0:119:e56b:c75c with SMTP id a92af1059eb24-124a00deeb4mr607142c88.33.1769502847800;
        Tue, 27 Jan 2026 00:34:07 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1247d90cda6sm21064235c88.1.2026.01.27.00.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 00:34:07 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v4 00/10] arm64: dts: qcom: kaanapali: Add more features
Date: Tue, 27 Jan 2026 00:33:57 -0800
Message-Id: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHV4eGkC/2WPwW7DIBBEf8XiXCKwMTFWVfU/qhzwstSoxTisY
 7WK8u/FTnuIellpVrNvZq+MMAck1ldXlnENFNJUhHqqGIx2ekceXNGsFrUWstb8Y5q5W4jHQMB
 bhfqoFTZogJWTOaMPXzvu7VT0YAn5kO0E4wbZAJttDLSk/L2HrnIz//KleuSvDRfcagCDqnVom
 tdEdDhf7CekGA9lsNPtnpvxfCntl3s4i0hk9/Z99fwAzxjTgnNOBa8K3oMXg1BOSOv/4V/Y3xf
 bJix9pWVrrRNeSxRwtJ3pZKdsY5SDzrSgpZBCOOVLsdsP1BfTOF4BAAA=
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769502846; l=2606;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=MvtBSyQj0js4SLSuEusISSHt2QHdpq7vCZi91SV0Fg4=;
 b=0cyqYUhRgLIosXX99+YjmJXfRcJVC7O5Xdjp1HlCFuLjaT/KrroGqWYtKdvs5u1dlYfnNbKC4
 h8J5/tb+fUvASAveKhKNSjsE75FcZfrNZCT/NMBY6eaICzCXj3pQbXT
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: ob2Isr3_EoKjBCKnBPukwjY5O5GM-cQf
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=69787881 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=30QYRZTqTB-2Bo_0AHsA:9 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: ob2Isr3_EoKjBCKnBPukwjY5O5GM-cQf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA2OSBTYWx0ZWRfXxoBcknx3FjgC
 xKBEM2nx7M4K8fxWWW128uYcejwH3DgcXJIJ+K/P5SgZ+/7ucpNIamcyhaqI4qznK2MJ31WB8J5
 qC1BXKa45bfHaNDkPKZnXrUVLUX4kAXP5zRevu2ltHofuuT70cGA2N53+8383rfFitsk+1Djj5Z
 IMyqctD/8lKeqfT60by//MUadWo8ofQz0vGACtKpCiyfWicy71elZvPDWO0KwCj2iQBkBJGBIPl
 iD1Dt8SXN0C3q9xFL7hRNb41QFYcYe10oq2hz39HG9ZgrpECKBkduCQ6rS341+Ya/QXnvTgZr3m
 DzxhHIVsAWX9RjU0wDP1ZSvregX5BOaf9xHYdpn7ygnC1oJFBgh6fGc49O1Wp6jjQCW8xR912W+
 AJKekXzFBu/+9namMGW7uohVZXpcOsCvMW9/px7B2m49UalyGmvmDYC+Epu8UtRmYwO1RFSyQSU
 yjHIfmJVp5sSiYfZ0Dw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-259757-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ECA8A91157
X-Rspamd-Action: no action

- TSENS and thermal zones
- CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
- QUPv3 serial engine
- ADSP and CDSP with fastrpc and smp2p
- Audio(enabled on MTP only)
- Multimedia clock including display/video/camera/gpu

dependency:
- adsp/cdsp binding: https://lore.kernel.org/all/20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com/ - reviewed 

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v4:
- Add hot trip at 120C for thermal zones
- Drop smp2p-modem node
- Some codestyle fixup
- Link to v3: https://lore.kernel.org/r/20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com

Changes in v3:
- seperate patch in function
- pick remoteproc/audio/MM clk patch
- Link to v2: https://lore.kernel.org/r/20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com

Changes in v2:
- picked latest coresight patch form: https://lore.kernel.org/all/20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com/
- Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com

---
Jie Gan (1):
      arm64: dts: qcom: kaanapali: add coresight nodes

Jingyi Wang (3):
      arm64: dts: qcom: kaanapali: Add ADSP and CDSP for Kaanapali SoC
      arm64: dts: qcom: kaanapali-mtp: Enable ADSP and CDSP
      arm64: dts: qcom: kaanapali-qrd: Enable ADSP and CDSP

Jyothi Kumar Seerapu (1):
      arm64: dts: qcom: kaanapali: Add QUPv3 configuration for serial engines

Manaf Meethalavalappu Pallikunhi (1):
      arm64: dts: qcom: kaanapali: Add TSENS and thermal zones

Prasad Kumpatla (2):
      arm64: dts: qcom: kaanapali: Add support for audio
      arm64: dts: qcom: kaanapali-mtp: Add audio support (WSA8845, WCD9395, DMIC)

Taniya Das (2):
      arm64: dts: qcom: kaanapali: Add support for MM clock controllers for Kaanapali
      arm64: defconfig: Enable Kaanapali clock controllers

 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts |  240 ++
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts |   14 +
 arch/arm64/boot/dts/qcom/kaanapali.dtsi    | 5119 ++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig               |    4 +
 4 files changed, 5377 insertions(+)
---
base-commit: 615aad0f61e0c7a898184a394dc895c610100d4f
change-id: 20260126-knp-dts-misc-54e6764e3e9c
prerequisite-message-id: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
prerequisite-patch-id: afd581c1ad048b1b9d5cb13cc667a5efbdfd1bad
prerequisite-patch-id: 554f737dd82cedf873d73db34d735c95c28b9cd3

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


