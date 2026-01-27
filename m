Return-Path: <devicetree+bounces-259968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOMxNbbXeGmUtgEAu9opvQ
	(envelope-from <devicetree+bounces-259968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:20:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 798F5968DE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E58DC302BA3E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF7B330FF25;
	Tue, 27 Jan 2026 15:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LlEhvEJ0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f9BJG9v2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F8A2FFDE1
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526232; cv=none; b=cMFVm6gafB1JJNRFwZBN19dTTAsNeY9XgUIKUz9hTMkfsYc7Dznqu7uCVByhFN6wqrxl34aU3nt90cLuJaPhktKtbt6MWEbxe1LHXcBc5M2ZNq5MtWjbn7hhEcsuStIsMI/zLDQRZ0wM34WGSQ9AORUfWL0TiO1RfhBFYvnsKxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526232; c=relaxed/simple;
	bh=2YM4XIpqzCb0LHUPbWTlm9mjtrLjc3dpK2x82XsFb0Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LaxyRneKujUT7K1suZeR1nw++p5/HAyWUuISL+xPPqhEn4+no/XjfjuYI4+Q52E0X83ExzVyqAijYiTk4aI21Cs6Dp3JF8hQvLIxLrAN4Q4GxPxSHfldpqjm+ISWy4mGitL1gtdYnSvFNqFqWr3AzCfZ0y2UuVwG1BV/y5kkdYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LlEhvEJ0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f9BJG9v2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA8r1K3857955
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NfI8wG2fYkxCZMur3SYNKv
	diP6pGEfXaML2kMJ4JiXc=; b=LlEhvEJ079yV0zydS6/w3Aa24XPpqFjUhOs4gL
	GHgsddZ5BVlX/J+qZyGFeJOtQuyzvQxa9O4Ctkrw/hA9FxavtPTwD6ZLR4YcV5OC
	X8+M0AJEVzDgPjyHXMFrLw+0WulQ8fmPxkwzu9+j3ZbGBYfR5OiEQEBHci2hzEuR
	2BfANCmg/mmsJLQ12SunfiVIzdlJNGhf0dQ31w+6BsoWHuVTT3b96euG7iZIE5PG
	Y3bvXlQ/6sJAfVueNI7YuADkE1M6VjNIdwVl1p3B/igi+ZHBwiTRrXmHWg6GquOO
	k+sGevxB2I5MiplZnT6qEyzZtmvfnngJE95UHeiqaaNzR/Wg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs343n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:50 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5662376ccaaso22218689e0c.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769526229; x=1770131029; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NfI8wG2fYkxCZMur3SYNKvdiP6pGEfXaML2kMJ4JiXc=;
        b=f9BJG9v2poLwuPRDUhkvRapPAP2B8IXwCtTfBgh9aWPuMbJ1A8tjwhuhWhoUqnrST1
         9cGZzqolzvhlCkQWIPrIztuG8TXvZCPWs8IZvgSgQLPIktyacg33hYiUlBAXTvPZtxmv
         A5rMi9p4ihNxliAHwMflKBJcHJovOftlogJ//u9uxltun+QeMeUM26Pyi4XvQGfGc+2M
         gd4TQ31wUW9wocEcJfmI4ZUCHRk1vXNf1nEQ8AlBMh5mwtpsEhitGzjdHpPpISCBlIQF
         yzsv3tx9UD5OiaFPywvlCaTWZVWQnBsYFb+XZRuj0fPrStH7rROxoACZANPu57ynT00v
         A/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526229; x=1770131029;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NfI8wG2fYkxCZMur3SYNKvdiP6pGEfXaML2kMJ4JiXc=;
        b=k77knTJpAG16U92yjPUL+H/T9mArceiPTozkEuycRRXuvU6NXhleQMn/9Wc+u0IhtX
         E0D4Ke1QBeE9GH/SKb8AothwVRKgz1eZkFIcbch8m6+eXDzQAvGveylYi0jRlz3Y0gTI
         fCqv9yE6A97w5kc6y4ImVhPJeLf5pPlSA3MJ5HhRfbY7KlYff3aoVbdpCWjsg0AAId3f
         GcdxkRWNJRP113P7s/vKUrbSygyYmv3Glg76YI8Q85GDLUyL3lJVk1uEJRPYVnUSlUqL
         32W732zUUqqFqA+TcOcoyqsxdIRl7LHN2SUT5FeivRkjbfhbenv27wVSwizLdiGqzWy0
         mCwA==
X-Forwarded-Encrypted: i=1; AJvYcCUjwLuUq0omtSgSKIo6nnw2irsVG9tF38QctSuXQx2ZE1EL/WcUW4JN8YnUO1aMJeS5VKc7ghgmGds/@vger.kernel.org
X-Gm-Message-State: AOJu0YzWxY89a4wBrp1vFMIDOwZourAnAk7TdiqXwZAI8g6CqIuBvDJU
	4xFb2A0ceXySTeET88AZM3Su1xUToeDaW0P6Bpe/lvUI1yaJCZNJS6eAlWCC+z/W+SkYz6HZ3jj
	uL3/yXnnuz+5oSIWYlE5IkyU9ZIiMg8LXwxJ5r8m1z0npESkxczio0i6H64nEnH6S
X-Gm-Gg: AZuq6aLiEY1KVRy4WNr6vO3xuL5oOQdHv1+vqsTNEgBeZrCZUEdbd3fQR/0s/9cevYr
	iFns9u3pBAGskH5Je0mOiAl2G0LO+cr3P463tJkUMKcK/eNKpKcsva2y+jdKZu4tZi6qANY2YI0
	njINF/dOT2+pGxHVMaChqEhjyCkz9j9+vSyQyrUkz1Zju9++rDRafiseQDflpdoXS7msWd3dnrv
	1/gRotoLVDM82QICNW8uFK7iQR5FkhIZoffGIEOKeCtruvGUZewmidMiD7QIV9a9U+U0Xsl7ddf
	XLW4s1pevGwPB9zpCi65M96SqCGisQGZ0FXn76vUNI9olnf8mI+00AhgZ5EBvyGiuao+VRYjFQq
	fXtpEEKPUdxb2QVESJQ==
X-Received: by 2002:a05:6122:658f:b0:55b:305b:4e40 with SMTP id 71dfb90a1353d-566795e184amr744447e0c.17.1769526229451;
        Tue, 27 Jan 2026 07:03:49 -0800 (PST)
X-Received: by 2002:a05:6122:658f:b0:55b:305b:4e40 with SMTP id 71dfb90a1353d-566795e184amr744244e0c.17.1769526227507;
        Tue, 27 Jan 2026 07:03:47 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02cd8sm36895097f8f.8.2026.01.27.07.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:03:46 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v2 0/6] clk: qcom: Add support for basic clocks providers
 on Eliza SoC
Date: Tue, 27 Jan 2026 17:03:18 +0200
Message-Id: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALbTeGkC/1WNwQ6CMBBEf4Xs2ZK2KIgn/8NwqGWRVaDaBaIS/
 t2C8eBlkpfMvJmA0RMyHKIJPI7E5LoAehOBrU13QUFlYNBSp1JpKbChtxG2cfbGYoeYoc1LiVk
 OYXL3WNFz1Z2KL/NwvqLtF8fSqIl751/r36iW3k+d/KtHJaRI022l8kRVe5sdHXP8GExjXdvGI
 aCY5/kDBuqrDMEAAAA=
X-Change-ID: 20260120-eliza-clocks-5ee7ec9d0e79
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1921;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=2YM4XIpqzCb0LHUPbWTlm9mjtrLjc3dpK2x82XsFb0Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpeNPAsvCagbVge9+T1BI+0XrRghQvxwm0KNCqs
 5Cu7AaLy++JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXjTwAAKCRAbX0TJAJUV
 Vp6/EADH6CnX8iThDnDuJCNXyTPwYXW/icDGh0uNdcLh9haXkEwSl6DKzPgzyJBkN3tM+VEIzv1
 JbJuCnjo/9xezlpx5kxItx7D8C2xQO/o/xLlztEXXd6UpUICubXA2KsqMakEd5eB38U1ii9mawX
 5GImQChcQbQcVP0OC4uPEm7DUElJ5PoxWAXnl84XKdY17s6flEf/YfWmCjjKf+qtlGXGP4dKEgG
 p3rZ+PIYtZOFL/+GZ9GDMkocVIR1dSmH8PxJR+AEKMFNTgFBJokvvWwbeiexY5JYQ/WdYMAE42H
 4UoxaadVNMNHuPcV0Mai9rB4fp+NpamNsVBb2VYc53YFgLn8CpGJglw8/3gXmB94rgJkCW2DbWo
 VkWFahMwZ9Wq8HTGdkZruwCdDtLZor1ffrrranY5/ovrFestdZl8MPXftSyjlFk49v1oaL09s0l
 4BUNhMzIshtrLWudRVJJ/Myr8Iw0CXciRd5mE+DgLiNsuR6xPs7tQW1B7ylhqoGjX/fMARW28Fj
 TFVtDEiuPluiMaSRWLe4txG1BxpumB5cNyRWwyKX3/S4ElsUpFGMbcOnViRw9hvOdBiOzozTK8F
 ZW2KPjX9kNSM3NjHtbV6CYgkYqYj/z8nlPXJ63vwjC2YUchVLZGNTZy2mNVD87hotc57FeGgXn9
 M0exwX9FOEPyIYw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: WzP278djnTcabdt1Nin0g-TfpZTnXAFy
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=6978d3d6 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8
 a=_s2lmL9ZJNBb6SD5BL8A:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: WzP278djnTcabdt1Nin0g-TfpZTnXAFy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyMyBTYWx0ZWRfX7V1nj4Uq0YPj
 M0oARIlZPZWu3FyPi5WfbktfedoVcnBvM7I+6LO7wQc3ijIg7CNtmV3Vz7oKjB1W9TWRhiqtKZD
 S2nHzumhSOMjEyTYbgevl9QgSgL2m4PDnta+1eLLxwzS0PVJ4tnCabOUgWVFlZSHm5s15Jtnh6C
 u06dwAWhfpmfzXFsoDH83CCmOWR8shykkcsk02uQm6cb2v3BfsErrgt+43y7FPxow+vCcSZmNhj
 pogMBqGxN7ySZbAaLdemjr7q5ocQErc228NQ/dWhoG5zuKpqpSkyGGqdcnurRqSLv0AYmIQRMQx
 +Vz/58mBO9TaneVralu6HcIgD/ufzFHUPB4zrOuplGFIzGgNJQc+mx5XGucfzefj9UXvzrmfS8i
 E5pY/UKTHelsq/AHcl4yirvvcNni5g6A8nFfk2WfNnP9XDwykMasW8unDklMb9qRvz6KdCuMD+M
 3BnHul0ZkIHLmTouCug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259968-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,msgid.link:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 798F5968DE
X-Rspamd-Action: no action

These are the bare minimum clock providers needed in order to
be able to boot to shell and have the rootfs on UFS.

The multimedia-specific clock providers will come later on.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260126
- Replaced the all-caps SoC name everywhere
- Created separate patches for each clock controller
- Dropped unused header includes
- Added parents to all TCSR clocks
- Added an explanation to why the Milos GCC bindings schema was reused.
- Link to v1: https://patch.msgid.link/20260123-eliza-clocks-v1-0-664f1931f8c7@oss.qualcomm.com

---
Abel Vesa (1):
      clk: qcom: Add TCSR clock driver for Eliza

Taniya Das (5):
      dt-bindings: clock: qcom: document the Eliza Global Clock Controller
      dt-bindings: clock: qcom: Document the Eliza TCSR Clock Controller
      dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for Eliza
      clk: qcom: rpmh: Add support for Eliza rpmh clocks
      clk: qcom: Add support for Global clock controller on Eliza

 .../devicetree/bindings/clock/qcom,milos-gcc.yaml  |    9 +-
 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |    2 +
 drivers/clk/qcom/Kconfig                           |   17 +
 drivers/clk/qcom/Makefile                          |    2 +
 drivers/clk/qcom/clk-rpmh.c                        |   20 +
 drivers/clk/qcom/gcc-eliza.c                       | 3160 ++++++++++++++++++++
 drivers/clk/qcom/tcsrcc-eliza.c                    |  144 +
 include/dt-bindings/clock/qcom,eliza-gcc.h         |  218 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h        |   15 +
 10 files changed, 3586 insertions(+), 2 deletions(-)
---
base-commit: 615aad0f61e0c7a898184a394dc895c610100d4f
change-id: 20260120-eliza-clocks-5ee7ec9d0e79

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


