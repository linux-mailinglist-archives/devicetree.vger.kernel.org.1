Return-Path: <devicetree+bounces-272814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mA0cB9ybrmk7GwIAu9opvQ
	(envelope-from <devicetree+bounces-272814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:07:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD2B236C30
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE72F3012817
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE1138B7C0;
	Mon,  9 Mar 2026 10:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HTrRkJpj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BKRd79Si"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE1538B7D7
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050802; cv=none; b=FW7QFVlvLFwgEdcyC49w7dCL7m8nlUwxvUdH3aNWJ/V6Zj0BKOUMxE6rqd3tAYNIsZlaAf5HCb7bzfAqjOLwhtQ8TIp9PS6BpQgvmyG2GNMGZlO+8gVElD428XqI9D9yUIFhfuyc5G5BmItc/9x5O7FoafuZ2f5jVNc3gb/JcKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050802; c=relaxed/simple;
	bh=nWhNAPhfiOzBhVrNTMsZDmJQ38A9ALefiGQc05qmPak=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jZ54e2lXs41tmY9WyS/yKM04/PJGhbRa3RMkeIl9271l0l7Epv0UH9XJa7DlRFzvOgFbwdQFhsIj9Zuhny98T4nducOX9yk4P9ZaI6tLW/KhgrKLS6jAMeERX61jpfHdNCTK5iIP2oTgZbP2NQiEtODHHI5h7eCU8SHwUH4EGSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HTrRkJpj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BKRd79Si; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6294eoTw1587275
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:06:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xlrs/nciaVZP/N4VHCfQ2zHYFEeBVdKNE/nyGQcIbPE=; b=HTrRkJpjy8a+gv/O
	jzFiQmTjRqlaDBSDVK4YWjugGDxLEwgauzKtm6xyNgnByc12N7jovu6g26/00Pxl
	xLDx8WpFHHJLNOr3GjY7mMh41gcsZ4UKi6pCeopfDww4pOr06Ac0LL2+BSIMRfWy
	Z14bzoS1FqZrEyAff+JAfB2YxJ2cjxtSLR7KWoqe67rmqrzEx4bHMDW7/ss9kYzf
	mRWXPaVfbueYZrd+F6DbIWKIkMx2+778YL7CHYD2l42OXL+IfvMrUI1J+ygvn6jZ
	wOVNwjQoeAsO9MZfwx9BLuHnag34yUIR1jzppCcvNopD838IkWO8p6DE1FwlgN50
	eB4U3g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy9208-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:06:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb6291d95aso3681253085a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773050799; x=1773655599; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xlrs/nciaVZP/N4VHCfQ2zHYFEeBVdKNE/nyGQcIbPE=;
        b=BKRd79SiLIuLF85cplsQrLGS59DYnnm/jnph18bWzWEzEfYKzg70g/B7PYTZD1jzSM
         cfoTeqqUs7p4Lu5Q95BHwAz1FkZAGb8vvVXhdCLyN5pOnHpXfwYJbheVh4Xvv+SGl4Jf
         tFO+ggbq99Q/jiB8cu/1bN0wNsfP+5KIHoIXlRKl+W8D6fxo+CNhgv1dBRszujISL+4u
         M2VXLeKUbegm2h9+rrPm1pU6/dF0JbqK6MOyDbQoEZTzUXAkiPgdeVKPRHLbwMhraEtE
         oA/M+EltKbnqkU+bZyGaD8FtNdQ4HUFI5SJNduolf/lGKyeWCGHhyY1HRz9AnCZ7Pu3B
         yNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773050799; x=1773655599;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xlrs/nciaVZP/N4VHCfQ2zHYFEeBVdKNE/nyGQcIbPE=;
        b=bs3MO6X0J7H3Ye7X8E8ZarvmXFDQ69+3pW9rWYlB2oXIAnZ5bfh2brlAhrnR9HHnvU
         Ufb+2FbIEO0/cZJrGfcqTquiE7CmgM3NhQVEuvB4BGBu1TPP7WnORJxOidC/PwIXkcQ7
         7rMt2RWNa3zVRJTz/IwVyeX3oonvs3MtmV66uVYl5vwXnY0YshqrZ0vG9UsByNe9tbtB
         IDGDeDjLGSNOq1QVzk+RxGRRYXbdVk1jiniEa159XVJ3eKykNcbSWYGF3i+6T1PJ+FJX
         PoKrQGwoJGuC2ghdW+ZR7yHwn5ptENlMtczAd7BxfxaBRLyBmtnl6Lq0bKltQGKQvKOr
         ztiw==
X-Forwarded-Encrypted: i=1; AJvYcCXHgXEN6Hk1z1GBV1bud8nEkD4r07hvCWgG+s2nhhkYEr6w86/oPesA5h3myS4GwDHuJVdsyIZH4lUS@vger.kernel.org
X-Gm-Message-State: AOJu0YxsxcPICXvUReO+RnR+Cu0Xiv8ucyhWN+US29+SownDt5qGUFTF
	Gj6LEtTCPVpiNDngTODWDCkCsQeQC9wgsztF8l6unuWvXo+RQ62VmilUC31RyPjq7zi23HaI3lo
	lQ9VI01cMXwPklD5hjtCGG70epanwvWnLR7V05Zfb56WxEhXOsFQbyr+alx/GJvTX
X-Gm-Gg: ATEYQzy+x67J2JAic+16fF2SCzWVQKR20u7L0juZDlluC94MWUCMFm4KqKXTflOnK7Q
	b3dQYi4u93XbOhvmTO0WreutL8Om4yrFOWeN+i+pPyRMyNnJvGsYXk47jrCVeBQki0V2zbilF84
	zMTFv+f/RYwXAYYCmQtiuIPtPb2w/yY5a/92Ratf7xZPT2YSs7JBPVJKCdFf1934FoqYb0g8biR
	DiYpY/NCRERolYYOUkg0cYK0oyqHv8hcsqpDs+LiiyEPFoEuDK5FW6wS0xOvV/LgT9pI5J3DalG
	LcUMqSYZTxFVyQCbjo+dWmgKYXwlMkf6R3hsoCKaAE1WA5yJdNYIBdYrZXntxaZz8Yx1DTEEfw9
	u/3co5LJMh6L25lLJbr6PUdC+7xZJkA==
X-Received: by 2002:a05:620a:4407:b0:8cd:8f66:c9c9 with SMTP id af79cd13be357-8cd8f66cdb2mr78104885a.64.1773050798658;
        Mon, 09 Mar 2026 03:06:38 -0700 (PDT)
X-Received: by 2002:a05:620a:4407:b0:8cd:8f66:c9c9 with SMTP id af79cd13be357-8cd8f66cdb2mr78100785a.64.1773050798095;
        Mon, 09 Mar 2026 03:06:38 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8d973sm24114052f8f.3.2026.03.09.03.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 03:06:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 12:06:17 +0200
Subject: [PATCH 1/3] dt-bindings: clock: qcom: glymur-gcc: Add missing CX
 power domain and required opp
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-fix-gcc-cx-scaling-v1-1-f682c82f116f@oss.qualcomm.com>
References: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2225;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=nWhNAPhfiOzBhVrNTMsZDmJQ38A9ALefiGQc05qmPak=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprpul8X6ADnOIlMirBe53WkxfduJBrSPaGOc1I
 Uc+HvcZg12JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa6bpQAKCRAbX0TJAJUV
 VvlSD/wIfH2EUpN8I73NVh5JgdghJIrCG9x1GOASVFanrTgfYEPW8su8hNlOfTsHmBuiBLL2US3
 p/Q2uqG8a1U2aok042tunLUiwSn7tWZCTY+6zImZf8O5T+ebfaKRYx1cuxnkHNCmAci0CDRQcqZ
 pL31Pqprhk6oZwFPy9fBkSo4xnSG5B3OUTqn+Z6/x6cy14VZYysWeSwsAgQGBaNsx9SnKsFuMG8
 JuJshsTNE8sZVzZUjEdcQmcf7Iao2xeoUTNBcTy+iKH8bNLzFiDy67WUtNt9vwg5hz9/mtH/S11
 t6jtN2AkqM7VafeCZ20UfT/kc5gWg/r/kVDn0h5gsquGe6kSW3YOnFIGxOMhCsCBLfetXryAetA
 Zcu8rDSuQ5KFco7JPfj1/nq8IQoPFlqDQy7+RCuBqxpcgI73i1dRrav+96E+S3WuO6QNEcvcixs
 W7qU9g9qatfSribnF3ujnelJzbzxZaQSSfpJsXmATFOU6JHVRKLTJBhB6Bd+ZMAHRO1W6bdJKWX
 6cETndEQvWAOmVwbchx+hJTMfHEiZnAC3IYnjx3eLQAQpuXEBp2IgiTv6CuTtqAUejVB6O3iUF4
 adRec8jcFm4J6pGPLhBY/6m7LdUK7GUeNuYHCTH0xakmt4MT6fMwmybTx5sqZzTCTCGLqCZDQid
 rr2Rovwcjhc5mlQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA5MyBTYWx0ZWRfX+Zm2cFP+5iZy
 +drrhkHeytzI661R9nvEb7yMlKLpAQA0k5MBHdq+tqc969wBbyOorav2vTk5h0s3FH7OZPtua0H
 8bvwcf5c0r4UzMeM/XnzzI3nd9JvjuVU6l+X85vc6A69E811RzuV9oXsBSk3u56GrRQSFRGuzwr
 VDdxPBcv/yG65QoGZ79CIVC7GwvohwCEu+FNT2PglYZE4JKZLbDqZjs+cFesJOi0PAGJFG7KKGZ
 i7Qm/JQl4OkyuC2X1B8kf6nuMTbWpnHuV1z8j6lQzDpqukcikAbjxEENQEmgf1IlbCkSjMxrflr
 azGYoYh4XSsA3yCUP7Bb7Nv4+TJCdyrTkpi/thswI2ACoUKCNOMKj2sgSYeY0Md0KNXYvehYRhL
 ASC5QUllCDLhIzCeBZDv4u0p3ZQk0LBMywbR1EkgTCuevYnXT223lKfzBo+quc8MIyPo0tJoGQf
 7bV3HpR3zxnmMxR2WSQ==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69ae9baf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=LvnajV2DHpQ1gAc7Ay4A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Ra5bT11iNGas5eORfXEj2jgXEEeLXk41
X-Proofpoint-GUID: Ra5bT11iNGas5eORfXEj2jgXEEeLXk41
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090093
X-Rspamd-Queue-Id: 1BD2B236C30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-272814-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

It has been concluded off-list that the Global Clock Controller needs to
scale the RPMh CX power domain, otherwise some of the subsystems might
crash or be unstable. So adding the RPMh CX power domain to the clock
controller which will result in all GDSCs being parented by CX. This way,
the vote from the consumers of each GDSC will trickle all the way to CX.

So document the power domain and the required opp to that end.

Fixes: ee2d967030fe ("dt-bindings: clock: qcom: document the Glymur Global Clock Controller")
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,glymur-gcc.yaml         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
index b05b0e6c4483..94a911855776 100644
--- a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
@@ -65,9 +65,20 @@ properties:
       - description: USB4 PHY 2 pcie pipe clock source
       - description: USB4 PHY 2 Max pipe clock source
 
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the CX power domain.
+    maxItems: 1
+
+  required-opps:
+    description:
+      A phandle to an OPP node describing required CX performance point.
+    maxItems: 1
+
 required:
   - compatible
   - clocks
+  - power-domains
   - '#power-domain-cells'
 
 allOf:
@@ -78,6 +89,7 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
     clock-controller@100000 {
       compatible = "qcom,glymur-gcc";
       reg = <0x100000 0x1f9000>;
@@ -113,6 +125,8 @@ examples:
                <&usb4_phy_0_pcie_pipe>, <&usb4_phy_0_max_pipe>,
                <&usb4_phy_1_pcie_pipe>, <&usb4_phy_1_max_pipe>,
                <&usb4_phy_2_pcie_pipe>, <&usb4_phy_2_max_pipe>;
+      power-domains = <&rpmhpd RPMHPD_CX>;
+      required-opps = <&rpmhpd_opp_nom>;
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;

-- 
2.48.1


