Return-Path: <devicetree+bounces-270017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMXfM/SRpWmREAYAu9opvQ
	(envelope-from <devicetree+bounces-270017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:34:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AE81D9DD2
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 770303006539
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CBC33ADBF;
	Mon,  2 Mar 2026 13:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TTeUUmqh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C4+LLwaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EDA368940
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458182; cv=none; b=I8QjOhg2qnegVFKB9iPlykS5I7MvNCUVAhN/1fiZynwUPxXfySFbGuh19AM6tZFzsJ33dRNeOE4HEWcLpbj7k/q4xQDJhzq7VIia/anDlQxg2D/ls8KRkIYzPVmsOgsllyWHqpiX6FZ94J0N3c11+EVVk73e4GSf+IC0SdxEqvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458182; c=relaxed/simple;
	bh=meXGgSvTGfMBUarg91iFcG54F1AZhuNxBdfaz030MnE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ikr9sBIKy1hraOEv8JMYAP/shqVchLD0yG+7pRdXvgQocWPWXAHHGJ/+G3kWgUbggxYWAHSWlmngMFPEvhMH5V/DnqOt1xCpIdyY6HplcmTyDoWlxFYlgg8TteiBzfLcgMui81jvO57IL7aLFxwjPQPmWVIjBBEccGfGq9HJ+KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TTeUUmqh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C4+LLwaA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622B3jTp3862930
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:29:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NrR8wBkc/3f/fInQc1117c
	YD1EoAhKrKGP3OxuRfbMc=; b=TTeUUmqhm5TJVfWz1zFZauz2jbAmLp3tWp/4/E
	iAP8IlZT+2UQj+x8+sVwzSE3APtgnIU16e4oXjlzN6ddfvb26z5vJZJmaRjWnlV0
	fR8sFTA/sH6Ulu3m3NSX+h2cJcbRAcHiagyiNieIuhalgLdHEEiDg1D+R0sedU2j
	cNa5a0fm0p/Bg2hGR3tEd8q/WSI8gaqLKHryFcP3NKHzInwOjYSkpadS7EQ8deKB
	wPcIf4BQxAIMPS1u2dlN8eDv43DP96XpLuUGL7RajPUgrDFmMpGgliPgsZRjFQRp
	+IaZpH1MpahkHMHDAFQeC6y9/auGb6QRyk4RMR3aOW8UNlLw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bjgdrj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:29:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4e37a796so3152347185a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772458178; x=1773062978; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NrR8wBkc/3f/fInQc1117cYD1EoAhKrKGP3OxuRfbMc=;
        b=C4+LLwaA2whLdKWSvo8W8igk/W2AqyqwNk0+35essva0j0LpiK6ZROdLW14yDxBlWm
         BSK2qBfuN1K9W2pS4U6ZGKMqqfdoZ1leLk0jRa8pOOCouvExhTSmB9vK5brPgzZHirUz
         LFVeFINiIEdRGOjjS1mkoZT2d9Fa9cv67+ywtcG2h2sEohmXgPX02K9JNG0W7xYjCIXH
         H7YM91oi/Ur0rsmkaEzOlz7o7fYZREL/uDFc1AFMYoT7OOAE5imH5prtY8IQwEAAE+ET
         K/A3J2EjnksImocs8YInjmGqE/AlkvMihvdaTl/uIRhdlL8NVXTT5IY91RWkuk+eGon3
         0weA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458178; x=1773062978;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NrR8wBkc/3f/fInQc1117cYD1EoAhKrKGP3OxuRfbMc=;
        b=vWrG8u9B0tDfF3kJoOT2JpusUjiBRs1PCoFkqJ1SWMmBu/cye6CF3m778kLwhbPR9Y
         dlwXfnA0mmMs+aF6k6bUpb3imMKWnj+N7mHchdqwpexwdiPCbXZw1rWJZTDx56ZIKXJX
         FAuyYaJWUCVnh+j8C0mG4T1/iQGuYIEFIF/g0OWhfrBjrF9Hs4X77OUEZKZ/CjHYFKNS
         zNo/UMrQRadahPS57QjaU4b9D5x2o1OowqTBAYavM92q0Pb8YkzM3LILi68CQ1V5f7xC
         DbSfNJY1UczaVOGJbmZp4LND1q9kGB9YuYUtSSlKrzwm/Df29Jdw3P7S4NlU7vfRQBlO
         4ipg==
X-Forwarded-Encrypted: i=1; AJvYcCXkQmjPJO/AMTnzfvVFv5Jsx5cVE1ks67izLCSNlsuREPLUtmIopKm0INPZovw1A/pizoT8JMoUOy+K@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8pEeaMmTEmcvAk+s66cY2gVR9yr+8MLy0v50Joa1/XuUpzSAZ
	vqty3oyeEy5NNfEPrTzZfzt/DibKwuBIPStdjW/gSvvmVpeOlScT8O+u1d5oFrMOnBSyvs09dxZ
	Irj7kyRrENSV8Rz+5DsRtjOOEx785lIcYFEHJEXZywl+aap2iE+gr6fuuxooNTbc1
X-Gm-Gg: ATEYQzwRnNsITaX8LKGIbaB1NKiw5ggOoIhbT80+An8dSDgfJP7Px2cJwZgovhK5ZMo
	W5ylHQnRrFd3up1tY9Ny8xJ1nPu/v9ho2lsGW6JcL1Q8/4W8ZzUcJ6/iXnYa5Mgoo+uCy+527Z6
	+LHHmahU8xxDuqHqr6Gkv9vHBArJXu56yLJbWFKwa6dQc8l+rS3d41TTR2Yb+JZk01TJxBrXm9F
	V4SjMnWxjMbO9hCp3BHYcXjIOE0NogN28ydvJSk7kheG1YU1yCLEni+H0e6lTBFsE73xpa30qnj
	uq64jLp9u2rBoXeSXPMAOZ+riqcog6Ba3PbvtEivt0/OT6DZJ9O1rxBUgRf1AEsQjfR+Nd7I4uL
	k3DlOwYdrbzvEiEArGlW99S0MVbsy4w==
X-Received: by 2002:a05:620a:3187:b0:8cb:b062:c2ec with SMTP id af79cd13be357-8cbc8d8678cmr1557390985a.29.1772458178210;
        Mon, 02 Mar 2026 05:29:38 -0800 (PST)
X-Received: by 2002:a05:620a:3187:b0:8cb:b062:c2ec with SMTP id af79cd13be357-8cbc8d8678cmr1557386385a.29.1772458177578;
        Mon, 02 Mar 2026 05:29:37 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf894sm133471575e9.16.2026.03.02.05.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:29:36 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v4 0/2] pmdomain: qcom: Add support for Eliza SoC
Date: Mon, 02 Mar 2026 15:29:30 +0200
Message-Id: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALqQpWkC/3XNQQ6CMBAF0KuQri3ptBXUlfcwLgodpEYoUiAq4
 e62uCFBNpP8zJ83I3HYGnTkFI2kxcE4Y2sf5C4ieanqG1KjfSac8YRxSCg+zEfRptK2UqamWgM
 7AmRaoiT+qGmxMK8ZvFx/2fXZHfMuKKFRGtfZ9j1/HCD0NvEBKKP5HvxWyVQn+mydi5+9euS2q
 mI/SPgx8IXCxUrhXuGiyA4pZinDYkMRS0WuFOGVBEFooVTKFPxRpmn6AuhNuq5RAQAA
X-Change-ID: 20260216-eliza-pmdomain-dd10911bd4e4
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1493;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=meXGgSvTGfMBUarg91iFcG54F1AZhuNxBdfaz030MnE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppZC8cRwcUq7qzrSSOY48JUijRlQuUOj/GYN03
 Pagg/PsPiGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaWQvAAKCRAbX0TJAJUV
 VmHSD/0ZLwiSY9gwTGrv1Y0LQ1FLtXpXxP8iHR9H3YgGPX++82vl1ub29pGBtW/KJX2w9dAQhaO
 bPJVw1HlaJ4QN3pWRQWcXyJ/54GqJN6Ce7zv3KDRDU6EsuTcZjUiV0KJ2xpzivgEu+IMlAGtbfm
 AqNXCPjnidB0Uy9mbIXcSYgqZJtjuMJXIjLPhSjwGIeYUuX8SAtOLcKXj/P1o/ITCwKFKqdtfrl
 Ebw47fojBHBOsrzC0jp3iWTgq3xsPuU49IeN95h3ExTfXdBmTabniEBaeThry9cbjqgYsnLwWbq
 M+DC+jMKnmCyPriWSIb+jZbdOCBrf1fKSeRW1L9XCPnDr2lMNXmJwK634ibYy3y9da2vd+mXEcZ
 i/Fs2V5oXXf4WCW4+S2W2vMIdHQR05SLOBqNFriK17uzJyKvnpsP7wd/reQHLgA0hrPyVoujiKO
 O08ldGoKQIMRHm86o48l5gwZJHuyjjTbfukOn8gi04ym0yNQ9clLhCPGOnisSIQremKvk+5EFGd
 cmR5wu7iiFIdNbb2eP3HgZqaWpv56ZLLBPHRhNKG21DtZ5uySEqkCuQaZFumPJRZpD+rZ4pRIQT
 1yNFTNSqnX2YYDTKQwWFzUH8xvtiFDnpnjpIo6mgSZwqygXIyayN55DD4JMa5thHKnBzn5OkQ6P
 NHlwFxLpKzxkqxw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=Pe7yRyhd c=1 sm=1 tr=0 ts=69a590c3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=w5gbrMkz2gkyNj4IujcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: irFv9oz_xJ4dRkC3IiNaHE31zh9sLfUB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMyBTYWx0ZWRfX2HGbXEidxrbu
 ND5yTB2jQVuvnHxRMsxJp0KQ1y55K10nHqcr4RNboF1Q9TPVU6wwoKBztgjMkG34pjZbwsDVPtc
 8El4cjn7xEIECe55oa48XnwhE9LExDuwuesW5msYuu3mEi1ktGMDlvXn5Xyf9XjU2IbDEy1scfZ
 rnE1Q+XUK1ziR42d6PqB7CVXMSPMmvNUlqaxbGhkQthQIEfsxNE2H3qxBN9hYkH3pM12vvU4zrb
 Pa4WRVsSL2LEC5VpyDxK6PzeL6wg3aK3+pYfj7FFsLelTuq0j4V6gTaAiVuxjafGv0BfHHBeSR8
 WtIsa6gAh5IjO2Uz4noiqscBMMJwHvm3waKhZ0tUkFnz11Y1Vq9SeoQ2TsiGBsQvhVZz/caEUzY
 /4gF1+6qJoR/KctQFxZFOtef1HJrXwBZ/PZ0J67BVsdZecaFw5UILPDQJ5/p2QvqccE7yVrqvhN
 Q+dhBmIF+z5vo/wNBnw==
X-Proofpoint-GUID: irFv9oz_xJ4dRkC3IiNaHE31zh9sLfUB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-270017-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 94AE81D9DD2
X-Rspamd-Action: no action

Document the SoC specific compatible in the devicetree bindings
and add the driver support for this SoC.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v4:
- Dropped the GMXC and NXP2, as suggested by Kornad.
- Link to v3: https://patch.msgid.link/20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com

Changes in v3:
- Picked up Dmitry's R-b tag for the driver patch.
- Re-worded the commit messages with better explanations.
- Dropped the MMCX and MXC entries as they are not described
  in downstream and not used. Consensus reached off-list.
- Link to v2: https://patch.msgid.link/20260223-eliza-pmdomain-v2-0-23fb87eb70ef@oss.qualcomm.com

Changes in v2:
- Changed the MMCX and MMCX_AO to the PDs with CX parent.
- Picked up Krzysztof's R-b tag for the bindings.
- Picked up Konrad's and Taniya's R-b tags for the driver patch.
- Link to v1: https://patch.msgid.link/20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com

---
Abel Vesa (2):
      dt-bindings: power: qcom,rpmpd: document the Eliza RPMh Power Domains
      pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml        |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                       | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260216-eliza-pmdomain-dd10911bd4e4

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


