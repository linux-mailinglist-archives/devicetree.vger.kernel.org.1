Return-Path: <devicetree+bounces-261899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN6SMmbpgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:13:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0EECFFE3
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 631073053B9A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC64838BF6C;
	Mon,  2 Feb 2026 18:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LWE2pmnl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="drAljPG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B71B2248A8
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770055775; cv=none; b=N7dqmhmr6HSMnV9qSLl7pVn2AIjSRjYp6nGNHaZDYcnV3edInOvCSmzUAt0sgb58OaKmBs/dAhBCrmuwZU+IdoetKQ0qrCoim57+jqenremvbHNEZi4RL0AyrsLZ6PrF8/ZTucnOIVK71d/d54Mq8YKcS9ZI/DDvI4SCdh5H3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770055775; c=relaxed/simple;
	bh=nAZMxJaPZ93+y83+6k1pES++idA/vnmjXuZYzre1qSY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=s6OFfoSPrGvYtfNOTXpbcRobX7AD2AbCIyhtUCpRbZVnBVWo5gneJfUR4mxUlNRhdKhfeRCoIJW0ChfA4khCtfoJCCKBJ8rCihB5OfDgcH06m+vhaT+MX3Wa4p6SACwq/x/kPMSj5hPS6gYTLOprmlBh3DnXaRY56Vh+5Ci+WmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LWE2pmnl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=drAljPG5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AP7mF2106939
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 18:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=wWnOL8UZfjGMmCa4y7NChRkFDGCYeDJ6A71
	nXpZlX3I=; b=LWE2pmnlyL1H77xuLPVrJ8y/5a7a2J2XtTuO3re7fsBHigw/y5Z
	hx0cn8r14HEbN2Xi8ss6k/GTEib8cC1EmEH+Y/ZrtFozIuJDqzj5Y5/7H7RmhoKj
	WvT9F8cW3+2TbhVEdWY/5+01K5mXwpj8qANRnxAD8mF1GlEHm0RtoYOyqpQ5z+pa
	sfmiog7/+RuojAxtoSQgjyk33U/wb+ijrjUMHLRyEhpudPp3DVvJj+tK+ynruRuG
	IwkIOwdjQkQGCyDjKuuaMy3NGij65bpNXqy0Uc6XxbOsuOUcdgui373qC5+F9lnx
	0RtfnTqVFki1pBcdokZd2cXHx09xZdvkGgg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2t5e9ebp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 18:09:33 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81efa628efbso4729400b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770055773; x=1770660573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wWnOL8UZfjGMmCa4y7NChRkFDGCYeDJ6A71nXpZlX3I=;
        b=drAljPG5dBioKLcwIMqsAZmqmdSHTjiVp/mhpQmSsVNykDHPtZ+AG6h09VTxjWBKcT
         w9YQ2KNbqoTYhcdeuid/9FMC5OFbwEHN+8BTwtoLOTL6cDrWwOoW1xDq+JrVLRKEiG6d
         3C+U8ZK7nYDuEupFhsGUFlcijUJMbl/OojXHQq7tKuiLUm1VeAnJwLHe63o51DzMQp3G
         x2EIS1HTx/AHX9jzznXBN7EGUdLhF76s/N+FTLddM0AzPEcywIh41z9DCC7I6hp6ZsH5
         6KcCB3aNx50AzLO9vj9P+yllD+mE2vYVkQ8U0aBUtqb3CN9sI01MaEnu2M31oUllrWXR
         bg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055773; x=1770660573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWnOL8UZfjGMmCa4y7NChRkFDGCYeDJ6A71nXpZlX3I=;
        b=vtN5yE0qTcxjebxclRSeJgDyd7qH5zKsDX93zslhIOJn/c9/4RmvSRIPrOR2Mio8m1
         cqcyAIHC09OzlwaDbYHUTVlCFf0FuYruOC/ADF2K9RcWxQxRFN9DysJdJWHj0/N3ux0K
         3ikI7C7VYFb44AiC81nWv/vb2jXRaNhqK1EEn5ueuxn1cK0rCw58R/XCifhMkgZuxt0p
         dH1BZ+umXSPQBFxN+u41W6mhn/JIfVSmMkkc9RA6hinMCTB5ug3Lxl4tS48aUIu1nqmN
         8kZ7Bm4/r1jiPVHgsR1l++LNu+lKuL8nXEtC2UpbIJyjWZW+QvaBWG2PFfetP5JgAkpk
         BIcw==
X-Forwarded-Encrypted: i=1; AJvYcCUilc5V5kER1i5V08Jee1gmzI9dLgB5RRcKSVkqAuDXf9Tfe1rPGUr/c2U537/4jImisb0licerQ0zj@vger.kernel.org
X-Gm-Message-State: AOJu0YydtYRleSIysMoKOdm/tENbKl2GdTRvn42v2gvUlPuXFx/saldv
	PWEdusBPK9p6qP9ogNsYhbdvs+XSZFCeBkKOkaSGD8rIOArLDGBqMT+CUR/2gQRAAM5kAiPNBuS
	BH1ty+dkn9CqVFjeMrQSCftf7wMnKtVMHo1fKVWfY/cuLiRLuZN8bwpHln6fqh5GH
X-Gm-Gg: AZuq6aLvln1jpmDr4xzIVRr3oXk1+R0o05VT2QVrdZVX/gAoRmGOkecZKynORlHS8YT
	2bS7OGsf6E/IOkFllC/MaGDfbJYc3qhD1wmjasfAcvPGk04AkHVjrt7YsoByX9EalIktK82pBbI
	ruWdR0B5n3hvZ+LxmYD9eoyNqoz0WjhqedwEqeuv6gy91IwB/QazF6WqAF+BAqRV7DPRuYFcleO
	knxQAguWyn/XPfRdPrg8FP1AJAkh5gyclyRa8PorZDJKzZUtLVj03UMRF7+fx6+p1Ci+AfCcCid
	FOgWXkSVn+gmUW43U5V2QZrEFPyD9BuGgKufyKlPDS2Ylnbjij7MFs5lajZ6Oga7e6UnaK9jiIJ
	o+3+yyqvz1QbVWSWw4RlmUl+d6hHNALVAExtMYdCoccg=
X-Received: by 2002:a05:6a00:94f4:b0:821:a7b6:10a2 with SMTP id d2e1a72fcca58-823aa940016mr11985953b3a.62.1770055773080;
        Mon, 02 Feb 2026 10:09:33 -0800 (PST)
X-Received: by 2002:a05:6a00:94f4:b0:821:a7b6:10a2 with SMTP id d2e1a72fcca58-823aa940016mr11985902b3a.62.1770055772385;
        Mon, 02 Feb 2026 10:09:32 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm17476780b3a.40.2026.02.02.10.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 10:09:31 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
Subject: [PATCH v4 00/13] Enable I2C on SA8255p Qualcomm platforms
Date: Mon,  2 Feb 2026 23:39:09 +0530
Message-Id: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE0MiBTYWx0ZWRfX1Rb9l0tj7O7n
 Rm+qzD+kxEK4KKtxU3efOs4GBvMZr3N475Ehj9bfHVaFaA1xgAPC/t4Rc1eTODYrIdjgMJ6cNv7
 tvWOyoLbyLf8Zps81iY0DtSvzOWP0ly4yUGbLLrNINEdBbBT+YwzWd/LlJReVc3FSufAdwh0/ze
 bst41kTQ16LFFxhEN30D5DZxnwJaIrqa6hV9XL1ps3TxbRHnmO0jm2D6zUCFTCAGEKpTUDKk+9I
 3CnogAGaeTkEy+QiClYsHnza3NgXSCh16K8k7v1U3ofdpQsH49gcv7ATQilNnGVDo0UjKZSImVW
 t9xTC+PvIsaMhsHLDJ7BWJhKo7DQujaPdQYaVoKJkCSoqPtjFcpIGB29KLAFaV1LqabM9ne/bvV
 bs0SJ3yUTZMB2gUwyl39h7GsJWoYIE2RG/ygEPgJ8WLRMhHsg9wX5CNAaoNk0ZeDBgdOXzdOwJE
 iU8G9NgqZrCZo3GvGpg==
X-Proofpoint-GUID: ydwAewqH0JxFY44ESdO2CNTodJur1sqx
X-Authority-Analysis: v=2.4 cv=NOfYOk6g c=1 sm=1 tr=0 ts=6980e85d cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8413JC8MLbS8ckBEwAwA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: ydwAewqH0JxFY44ESdO2CNTodJur1sqx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261899-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C0EECFFE3
X-Rspamd-Action: no action

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages I2C frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate..

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Praveen Talari (13):
  soc: qcom: geni-se: Refactor geni_icc_get() and make qup-memory ICC
    path optional
  soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
  soc: qcom: geni-se: Introduce helper API for resource initialization
  soc: qcom: geni-se: Handle core clk in geni_se_clks_off() and
    geni_se_clks_on()
  soc: qcom: geni-se: Add resources activation/deactivation helpers
  soc: qcom: geni-se: Introduce helper API for attaching power domains
  soc: qcom: geni-se: Introduce helper APIs for performance control
  dt-bindings: i2c: Describe SA8255p
  i2c: qcom-geni: Isolate serial engine setup
  i2c: qcom-geni: Move resource initialization to separate function
  i2c: qcom-geni: Use resources helper APIs in runtime PM functions
  i2c: qcom-geni: Store of_device_id data in driver private struct
  i2c: qcom-geni: Enable I2C on SA8255p Qualcomm platforms
---
v3->v4
- Added a new patch(4/13) to handle core clk as part of
  geni_se_clks_off/on().
---

 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   |  64 ++++
 drivers/i2c/busses/i2c-qcom-geni.c            | 303 +++++++++---------
 drivers/soc/qcom/qcom-geni-se.c               | 265 +++++++++++++--
 include/linux/soc/qcom/geni-se.h              |  19 ++
 4 files changed, 476 insertions(+), 175 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml


base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
-- 
2.34.1


