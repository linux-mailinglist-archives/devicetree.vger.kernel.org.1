Return-Path: <devicetree+bounces-272908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIe/Lj66rmmcIQIAu9opvQ
	(envelope-from <devicetree+bounces-272908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:17:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 379F0238A5A
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F1FE308642F
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921663AEF3B;
	Mon,  9 Mar 2026 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ff/FXfFO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vz8jPPvF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F713AE71F
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058122; cv=none; b=lVKwjaZiBS1HlpIxyHpra03E50NRrwXtsU6xkZWKi2SKnmP1sJxhQE560UzrVE9CHSJ8vHIx0dEpMjMtuSJlMxr/U7yo2UB3VNugUzF3jAvqw8bX1sbCicFT5gTWD9u/k5xucOIZNoIoe3pvLFH21c/0S6BXbOcoZbx/RsVqvyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058122; c=relaxed/simple;
	bh=rHJsocNfNwVm2MjdpQ8NBJ8I/rjbG3Qcpok1Ai/CgR0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VuDTKL9ag8BjuxyrZ0Lt7jxUWZO+C/O1y+It59E3oMDtLI589Q0dhNJnwjJVrZ/axYzt6XKPwSYkmpU8bfEcpYjn6etF0TjWawBk3LjL40c4CNYYVOELAsxHQH4SXHz4Z+2WBqaREyOccNNuZoVADEWdb4kzneES5ICgp2PN63s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ff/FXfFO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vz8jPPvF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A0MFj1588538
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7IdqWoT+UUiyloygT8MTrbnVWYlg2uxJ7b2MUvC7aI8=; b=ff/FXfFO1Nv/kloL
	hHHcEksr3ks58rS+mDhbDedoTIDzTmFikAcDZIrIQUpouX7z4XOSoTJXwwqHstX4
	ppOHxW+BK4uHaa4OEDdxatyGADI1F+aa+MiQU2kG1eIdQgNOLYd1gL096NM+JqnN
	SJCnuZ+yLAw+na9VJtwBPJBhxU7lol+PLaIuKHVjXueA/bHwof9VlhmiHMmRdbSd
	DV/WRePohEJ1w0eCsK5sCz6htatDrM69keGjPYS6BYrovc4xZ5BJs0Mcy37WjlAs
	UsuAoQ6IamZUh/6WRhbBj3xPpYaoV2hWzUfmJTiBOSUzT8nqxpCjcDI3zopixWTy
	5oSHgQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy9e54-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:08:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd85e08fddso977276785a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058120; x=1773662920; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IdqWoT+UUiyloygT8MTrbnVWYlg2uxJ7b2MUvC7aI8=;
        b=Vz8jPPvFAGHllnxO/r4PXFmeu9rj2TBXD6fFmwfQEYYgrm1PK0JbhNiXUfVp7i/cF6
         UcLiGRErwMq3iN6RwKj0idXdYqE8WD9v5PYDArx91VvNYqwaYo3voJuSBTkvP3E8sg2z
         p1gjumzoK+Pck89gzL3t5HWn+4gsxcCS0IZbvm6MGFi2hxOpvT7SqVISvnVWHnsVeEc/
         lfmf00J8rRZzIPHmY0MwRSlb7/8ldqwcgf301QfyAm332Dj8o3+ezVpGgMtKktdTZT5A
         EaNzJ/IAX1Nnv5HubyEQh5MzxVkUg9NNieb8JMKqEMhrG+KSX3kw3hJ2D2FRWs9UKXt4
         ih2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058120; x=1773662920;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7IdqWoT+UUiyloygT8MTrbnVWYlg2uxJ7b2MUvC7aI8=;
        b=gnVxT2TS7clD1v6QSZANc3N1ZtRFUzEOO93IfOEDT8ctZ4V7uZnUZdJsocXddCTTn7
         MMCXwr4DlQZ3y/yLOBHBYkc+5ygdLxdvMsRBmV2MSqiTR3mHO17a+yrmvKiXalLZbyVr
         pOklXopOU8xZfj6jDNN+Hxrbnj93yFaiwa64jUlzudLMTRkS9EI2Cxqn0oZzsCj8eMjN
         zRr3GmD/kqHFlzn6KQtDbUG4s5PH2qAgwUx2Ndkz+1ivjP7h8U00BZaq5sIFkUOxUmCX
         0b6ri4GNX8fbwnFyTyM1/xIcLgLoaqvWMph7plhWkmIgLKZ5Kex2A8QVO4i+HZ6/inix
         /+WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGTIxHj8G3IaQ2fndsVdLbMcKCpFJXeLOBW9bHbQIqrgPE6hVw1Ac6D5w1zzs+RQ7MDw6phyi4KANP@vger.kernel.org
X-Gm-Message-State: AOJu0YyOwkGdu4KBVTUydnJl1TPqYnhCtoIksmdTYCAgUYRI3gnKG6jl
	NH/wimFpSIKZFFlQXYyCCNiTd+HMm8zvs2tAWFgx++0uOPam8uHjM6BL3+qXgoZiyWOmBOMIHgt
	39k8Ikue7UDqmjCWACFzrMbsoTkp2Cbv13zCysqv2jfpwRR/etnVBZL6pd9tsaP5x
X-Gm-Gg: ATEYQzzC0Lgtt4kLcyswVbe7WEclredpDr8WwPcol37OacM/Vk7IBr9k9akKy1Fby+a
	2jWPP1nSsE9qewO1ctSxx1AQETdcDLREKdKbcaDPIjHmAoa8UwLhgFXDPgB4tMpSnJmLPboN7DK
	ewkmp2SDvwjtQTL0/V1fgScTOo9ep2enUSPiFMrX9SFwuWXFGP6JmbC4pf/Gt62niL/rK+ebg6r
	WNniUbBl6Oubsgf7uZpUMnvImf8WvS08AyZiG7eSXzMEbAB0wm5izKF0DOCaea0H5LW+KANC/V7
	8MCSYGFC/dxBHDx8C4V44ZldNzERtdLB6O9A5PzoUG3R/q8W2B+HKTyLbABLbnByAn2E9lQ/ro9
	l1IMuqixXALJ4WaxNfit8X414FSmjjw==
X-Received: by 2002:a05:620a:f12:b0:8b2:e058:de83 with SMTP id af79cd13be357-8cd6d3eaf3dmr1385358585a.15.1773058119500;
        Mon, 09 Mar 2026 05:08:39 -0700 (PDT)
X-Received: by 2002:a05:620a:f12:b0:8b2:e058:de83 with SMTP id af79cd13be357-8cd6d3eaf3dmr1385350585a.15.1773058118925;
        Mon, 09 Mar 2026 05:08:38 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853916624dsm107826075e9.6.2026.03.09.05.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:08:38 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 14:08:17 +0200
Subject: [PATCH v2 2/3] clk: qcom: gcc-glymur: Enable runtime PM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-fix-gcc-cx-scaling-v2-2-d7a58a0a9ecb@oss.qualcomm.com>
References: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
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
        Abel Vesa <abelvesa@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1118;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=rHJsocNfNwVm2MjdpQ8NBJ8I/rjbG3Qcpok1Ai/CgR0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprrg7pdKzLsmoD9r3Y84p4pzCxAzjF6qMpZDti
 NZ1INZ89UGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa64OwAKCRAbX0TJAJUV
 VlhPD/9uAIhNz83B5iwD7Y750ftbsKWYHtDGpIxAJFtvtXbxoC6zpc2FpV4F+0QpW3tv4m9bjIB
 bDh4p48tkr67lrSzzIegVqXXcMaK1z9SVZtz1JwmOTyo4buOR+0TofP6ObgR1R0HZRayV1SGsX8
 tqpcq8hYOLZnUyH0VjeoIhumGOKj/sCH7y565zfHup3YIpV5DYy8AGzhT1g6BfzJUaKaQMbG2Ef
 e3CToDor4wiKvBLAVtwF70wfTqGCZlLRch/PIqEFxbWq9oP7TATtLHZ/oWWVbQtPvw2xysTD/Bz
 o5gSqCCrzcddgBRRUPOr2s1lrwBT2HTYeQL8hRZZxLB+WmTpMIBtEVgrKSpQJfhNjennqbCMoYJ
 gBDvM1NcDykOC8Zw3ySk07rrUkFafqA3AM/6zOanMzNj6+ouWT0QR+yV1dHrcvn/XufYwXsOxJ0
 SB/VuRLOf8CpDXvECHzQqma2pmNbKKjajx7Pjo4gAZ+ikdvEygApWtuwLkTPhuc30NqaScmv0if
 Sw4wDVt5xfcTceMqtRbATFoqBUZCffu3OJxEujU97WRfQKeAkEZOZFaTEY3x4RLWO90PpcMI4/Y
 VEHYrMqX208zohxsI9WQtLLNoTDx8tGUQyRH01OleIH0KzLnkHC3ExbssW5M3t39g5GFqWPhKLK
 6BuncfOl0ib533g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMSBTYWx0ZWRfX+LROdH8ZtJg5
 EXbws58GIpOZsNZ6ANBdI/jD5hl5ZZRUGEgvG1s2XLNDjAZCrl+oFOvvRXn1vwiTpUux8FUNbiU
 VZCiAUTIHHLaLFtx/4oYxQMgB64h7E7KIOCWBrfD8nlCq2B3CSRJH9Jdx/Lyx07+QRL+RDbuAfd
 3pegvB4CTz3oVcSiLFtFbZuHocGAYQ62ugM4aMsYJgJRpEHNcFC8fuYX4qnHgd6k2hXrf9RvmcK
 EHHTYZwLkpZJj39QnXo/rvqA933omEgIspl7UWm4hXE+w6GM4TeT9/Seqg5zR5Xe0vMQOlGv4Fk
 uRp9TfbiMkilWBbmQ+a2ggDIvQZUlroGBdAEvDKjjARwo3+BRacWRQKN+A4S6F6+GKWkwY/ur/R
 4nIyQii8vvoxxhq8CuzfLk9qdJ5+qaFBpnmu5rByoytfpEHtLKG2LcK6RTtmMfDwWyTJW9X2sWA
 cfHRJkERkshq0ELvF5w==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69aeb848 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Q0q0LOKJFIdqpUU2TdAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: NgbXtG-h1CUb1CcDfYe-Bq3WMvHjzw2C
X-Proofpoint-GUID: NgbXtG-h1CUb1CcDfYe-Bq3WMvHjzw2C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090111
X-Rspamd-Queue-Id: 379F0238A5A
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
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-272908-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.934];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

It has been concluded off-list that the controller needs to scale the RPMh
CX power domain, otherwise some of the subsystems might crash or be
unstable. So adding the RPMh CX power domain to the controller will result
in all GDSCs being parented by CX. This way, the vote from the consumers
of each GDSC will trickle all the way to CX.

So since there is a power domain attached to the controller, enable
runtime PM.

Fixes: efe504300a17 ("clk: qcom: gcc: Add support for Global Clock Controller")
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-glymur.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
index 0f3981252a68..7cb5076a460f 100644
--- a/drivers/clk/qcom/gcc-glymur.c
+++ b/drivers/clk/qcom/gcc-glymur.c
@@ -8578,6 +8578,7 @@ static const struct qcom_cc_desc gcc_glymur_desc = {
 	.num_resets = ARRAY_SIZE(gcc_glymur_resets),
 	.gdscs = gcc_glymur_gdscs,
 	.num_gdscs = ARRAY_SIZE(gcc_glymur_gdscs),
+	.use_rpm = true,
 	.driver_data = &gcc_glymur_driver_data,
 };
 

-- 
2.48.1


