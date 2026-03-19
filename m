Return-Path: <devicetree+bounces-277850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GKmLawXvGlEsQIAu9opvQ
	(envelope-from <devicetree+bounces-277850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:35:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1853A2CDC88
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 113E6311D736
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066D33E7148;
	Thu, 19 Mar 2026 15:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ioBMm7Kp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NJdI93gE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8661E3E7172
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773934258; cv=none; b=eXpMj109zeP1zeIZVXOk9vJXRCyoBTgSEAPRfR9NJmkIzwds5XlWav9gx5jQqxVZPbDpPP/GVxCoVT3u4pxGaLZI1LIMcaM9r6zt8VnhhaZIrxRZgYrCTB0upJsPfXpW2B6iCuLHoyIrjFLanMvi97wbJiXEIB/3cruf+y9WoM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773934258; c=relaxed/simple;
	bh=YSMTij5qLJWoQMRLFi5RDILjJ+GLHo6QCE5SPTFBYRY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=p96DyaPBLIx2BN50MGhOeAWDE20kwVs453EIKH2c2RjQpha0RB3eoYGne5ptT4xb5Most2ZNp3/Su2pUKxWe8gqYPDFu/i7efMRDxVAojYNryHyR3wWLmZUo/PEg0LrrQXPflbEQMP5Ex0f9NcNoK6CBgAWWZwZZ1UIYWhRrwQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ioBMm7Kp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NJdI93gE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JF4qJU3927147
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:30:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7qDr/QzkkKfZPljDfvfL8j
	5LUyG5PbnV4OWI0F/OpHY=; b=ioBMm7KpBxs9Y6f/aQXfKpyZEAy2r3iEdlWFSq
	cq5wNT1tfnhZG/DkezARcqKpF52xqSjhdJxlZbmZhIiuv124SNWC1G3VAgAwrvui
	0gSQMsGQCkSmfSMzch225YJgEvo1dCd+RYzh/Rybz9x4MzK4uCvqWmM2lHoFmTkG
	5MbpyC6Pd8yccwBXYqUACltsqDfIUU3VzAXRqOy8PhV/ZdKm87FnIz9hlcSLzexx
	dnSsh+bhWvfsSY/jte8C4/KO+KPP7YhHe1Tq32hl0TTCkU8KNSHP6vbvxh0IyEAj
	hixGCYCv6SjonWPYpP6fdHAtT+NhzxNT0vdwxtJlYtsdur/Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut1cxk2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:30:56 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5fa75a19f21so16373242137.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773934256; x=1774539056; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7qDr/QzkkKfZPljDfvfL8j5LUyG5PbnV4OWI0F/OpHY=;
        b=NJdI93gEUDkTCJTc3dee4o7XSACl9qBRN5rvUJLp1dytdSGHQdgE7lR5kHNGRJ8Gb3
         QFYMq5IG+ZjxIqT8hLQLqi2iVpk7FvandjSepkH6vIjBZD2mlveqtgMc3bakofktF+ey
         jbh0GG3UQUfVc+Gpylnr9BDgV0uTwSYvEW4YqhiDLoM7wt001601AOtpb6qtDkUlQbPM
         vp8nnVG05s6gONo5UMSHrTxndh4WrLEdFtIqQw4A+UmsUzbP52ir0TwFd85wFttY4JNY
         itL9lgavtuZLbw+HDDORLfZ6MGmkeM2BSL6SqEiRooO9s9arhiSPExs0grEAiACfaRLz
         3WkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773934256; x=1774539056;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7qDr/QzkkKfZPljDfvfL8j5LUyG5PbnV4OWI0F/OpHY=;
        b=hdji95jSpOCuvPTfcxNElM78iaqHxlGuTLklSYnSlzkYATrlWsNpQTXCUx2Z+T++ga
         JNPe4MIh4ufaR+X+af/UrJdqmBQ1tLizx/DD6nnN1siI/4r2j/LRrtfoD9l9dCI9Qvpc
         n0mbLzTFy3pG8IDevL2voxKYkZIgwhLBqmayMXm4AqWLDnog9EIV8HzZdjLXLsQgWwhw
         8IP8VDzQYk++3KCIoFKW6v4wk9h2e2FgX3KAq+Q7kbhE4TJZtsS5gejhnde1LfMn34Hv
         oY4wydJ7foJer9AORmHa4rVQobnsp1biYKd3+vk46/Oh8uPnN5Lpz7VfDQpZDgGqv4jD
         N5Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUlNYBxEw8YX755plUsOzE2HpqGFWqkPR7vwec/68sn5Jc6VZGQ/XmSGo85SLFBFApfuYUHv88aTdAL@vger.kernel.org
X-Gm-Message-State: AOJu0YwFM25oHhwi2XXg7S5JkA73ForW0xJN1+gcOTL7p1OjtfC1PTxP
	HcAenzyBxsGyGj2TvFDOGTvN+dF5wZBxQLCJzx5/x+fKlmEliSsAi7AeLnpPLJFnii0NDhvDaaz
	BsH0/JUIt3AUqy6FeZPvGGO9Suyq1RkjFSzRJHEjtKfZobEcnKD8dsJq/ngn+gqC5
X-Gm-Gg: ATEYQzy4Wi1v7h9CceoxFWmibbCxzJUb7/11jkbzBnRoGAtzE8Djx6BfXCYqZbREO5o
	n3DUPp8jBaoP2dEd5gK/jmee0jMf+9y+Xjk4Wc6Aqc8/ewiqRxIxHt6YO8Uvfs07ZN/oHEvs0Xc
	+2w4dfxp1myNoIZ61YLBmXqP5qCymEX4G6bhhtplVFrxC8hl7XtuRD+Xn2P+66Jl8I8S6CUzMi/
	yxkk8aHHMRpLjKje2mZ4wNLviv1CKOBFS5Y6cqSjSO2iQTKOJYeEFrDkCSVDse09HGEOOwRIgos
	1vLu9lExv5uPf4NlxtPRepUnMTKp5ZjFqeT1I93CChsEl9+Vfw60X7fLIhnTMr9iNpKFhiJLIOa
	OohE1HbHuN6CFnDbOxW7dgqc1ing=
X-Received: by 2002:a05:6102:f85:b0:5ff:fac2:836e with SMTP id ada2fe7eead31-602956a84e6mr1960237137.4.1773934255573;
        Thu, 19 Mar 2026 08:30:55 -0700 (PDT)
X-Received: by 2002:a05:6102:f85:b0:5ff:fac2:836e with SMTP id ada2fe7eead31-602956a84e6mr1960194137.4.1773934254930;
        Thu, 19 Mar 2026 08:30:54 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b0b9fdsm78590705e9.2.2026.03.19.08.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:30:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:30:48 +0200
Subject: [PATCH v5] arm64: dts: qcom: glymur-crd: Enable keyboard, trackpad
 and touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v5-1-4a440594348b@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKcWvGkC/43QUW/CIBAH8K/S8LwzQFuQPvk9lj0UOJVN2wq00
 Ri/+6BuSbPM6EvDEfq7/92VBPQOA2mKK/E4ueD6LhX1W0HMvu12CM6mmnDKBS2pgt3hchw92Bj
 AeAvYtfqA8KUtxAHy5ZoaarRcq4qSpAwet+48d3j/uNdh1J9oYmZ/Xng8jal1vD8jug0Ipj8eX
 WyKDs8R7u3ZmixzNUUx37MUK+c5pV9+87XWwhg0hHEYeh9BMKmFVZaW3DST+OM8ZPKImUI7AC2
 3NJ1RyZpmIk+zdyH2/jKvb2Jz+Jc3NTFgUAtMrhSqlWLTh7A6je0hj75Kn7nFxBcs489ZnljOp
 dSIlalF9YAtl2z5nC0TK4Sprd1i2oF9wFZL9oUlVIlNopAtKyul/lvC7Xb7BrZClOGoAgAA
X-Change-ID: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5832;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=YSMTij5qLJWoQMRLFi5RDILjJ+GLHo6QCE5SPTFBYRY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBar7vyS6YnR8y7enRoMOX0fyoD3ZoYoF9v2B
 AeSr0oymnGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwWqwAKCRAbX0TJAJUV
 Vm0tD/46h8P1ZLUqx15xbo0hOFXj/CZHBlrLvwpF3E4rFlQuI2J+9fNxkq6ubRFFJKTFJWT0OkQ
 hswz9fEpLetopIKvKOOlKGF5RDISTXV/zDETyNXJegfDovkaEybx4HD1Rpa4TCuxVnrWztDxH6r
 QvyXc4dP59jQpU2T97webh7LdiVxLhH80E0VxNmjklek51T1jfrvei9/yfm7wn3KA1ap4xfOc1y
 n0D0LQVBap0KicDILcbcqTOhyhG+Y16dY3GihUukubSclY3n8lJUJUwFw8iaijzs88hLORJNR0V
 BFwjs+v+zgGMLl+LeN4apStc9nmtnvAP5Nb+69BByI5XNtqy/yeZ0XIKJNwV/Mgl4Vo7o+XkJec
 eWXIQDwORI9U7ol6znd21iOtCSEyIHboOny92km4QSY2RgLVT6HWDaTfdvD3zpaTdaBFn2ZjdNt
 qj6vGr1Kz0EvQiHwBOJOa3ZfFJB+1MZ5ITY0hNnN+ljCJJWwUxV+CHCQaJvjNoLZP8nmkyLtoo4
 F3+HagQy33qAQso8Y5rGShwUKBuohmPjYIH9Bt7FeqnQI//OJSsz7n8qpaFhqtkUTcigTBxU1wW
 9Klwny9GJKjIbCZuR8nkplnNE7aFEmUNmWe6mDlqNEnA18spueXF+/ksWLQmLImRvwEhjMjMCWf
 La8c3Q5urLR9wLQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: JCEdpHBWEGr61rMvT9nWyDYp3XMoNMZV
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69bc16b0 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=BKRdnOoi8ktybqyubDMA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: JCEdpHBWEGr61rMvT9nWyDYp3XMoNMZV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMyBTYWx0ZWRfX0yn6AFocWGgM
 2G/lJ4fu8yUheNVAWJ4bbrrx6qFQ7rwrQyhOdem02t/A6G48SHXywxVZWWapUGwU5QNNgf28C4I
 kjPUkgXmdaicu0aCAs/q28MiCZePGliJr90ALrISR4Ufgy9kDh9IpCj1U7hXgPtkr5TB48nVTkA
 jLPqae0zlXXCZvoyRpGw9bJoQqS4KhzCYcD1FXlakm94O/+2ntSDmPHNWqn1Rrj5EqE0QewsmWM
 y4eGYsd9dYSp/hlURW+C2HziJMwGEJRlxzMB73r/ZiAY4l2IrDR/9GFYizsuXOH1WMIFvmdiBY4
 Eo88HJGbSxZI0bULiq0/TGiEtTwIcLT4yxhFRwMFFMhMj3av42bG1/H6BU6fNAqlFrV0iSBU0pw
 C9CiZQPPYiBJA0rVHMjKEiu5PXbwDepRbhuu8AkWDEJK82u5Z5vIQ7p/rSOXgw2DH/sJBrnVVJu
 q9OU2ooUZt3LdayQ1YQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190123
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277850-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,3a:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1853A2CDC88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On CRD, the keyboard, trackpad and touchscreen are connected over I2C
and all share a 3.3V regulator.

So describe the regulator and each input device along with their
pinctrl states.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v5:
- Since this depends on Displat DT patchset and since that one
  had to be respun in order to drop the non-merging phy patch
  dependency, this one had to be respun as well so that the dependency
  tree is correct.
- Link to v4: https://patch.msgid.link/20260319-glymur-dts-crd-enable-kbd-tp-ts-v4-1-dfe67a134996@oss.qualcomm.com

Changes in v4:
- Rebased on next-20260318.
- Dropped all dependencies except the USB DT and Display DT patchesets,
  which are needed for this one to apply cleanly.
- Link to v3: https://patch.msgid.link/20260313-glymur-dts-crd-enable-kbd-tp-ts-v3-1-66c5ddfee97d@oss.qualcomm.com

Changes in v3:
- Picked up Dmitry's and Konrad's R-b tags.
- Drop the output-high and add bias-disable to the reset pin of the
  touchscreen default state.
- Link to v2: https://patch.msgid.link/20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com

Changes in v2:
- Rebased on next-20260311
- Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
- Dropped next level dependency patchset.
- Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 38cdcf662ba7..5089ff7cdca3 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -13,6 +13,8 @@
 #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
 #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
@@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_misc_3p3: regulator-misc-3p3 {
+		 compatible = "regulator-fixed";
+
+		regulator-name = "VREG_MISC_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&misc_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "hid-over-i2c";
+		reg = <0x38>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
 	};
 };
 
+&pmh0110_f_e0_gpios {
+	misc_3p3_reg_en: misc-3p3-reg-en-state {
+		pins = "gpio6";
+		function = "normal";
+		bias-disable;
+		input-disable;
+		output-enable;
+		drive-push-pull;
+		power-source = <1>; /* 1.8 V */
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+	};
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };
@@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

---
base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
prerequisite-change-id:  20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v6
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v6
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


