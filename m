Return-Path: <devicetree+bounces-271577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM9+K9SHqWki+gAAu9opvQ
	(envelope-from <devicetree+bounces-271577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:40:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B34212AD4
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05A003029C11
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA11839E18D;
	Thu,  5 Mar 2026 13:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="In21xRST";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q8gLenFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946E63822B7
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717983; cv=none; b=f8BAZDQBo/IfGzGlqrmE13oTo6ATtWy8opFpE2nHpBQCSc1w8rZ+dQWKTrIkdGrIBPJnYFB03LxlUmjqQ6YDBxO8AZ/RIi7itB5OhujV5Gae0ViEnl1eBHyvVfsGx3le2FaTzRoMo+Ym1c48OLktKswIs+sCDJofqajmQOcUrWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717983; c=relaxed/simple;
	bh=P669zhMqfF9Y/Ri1GL7+64xRnAT/5X0TMmRDwIMqyHA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kyj2b77A5bai5TjfkjRVBM7lZcaGeWA+PBbjaPleowQT6ai2yoNquYVxnVowZaQg28pNKmlvfGCImXYrOoNn/mypmIjbQBr9EW27oJhmeUcsmgRAPuc5E6TNnFBZw4S6/sXZ7ijqBRDLrviI8kpJOgRvz3JZ7y1Ysbir3RiV8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=In21xRST; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q8gLenFm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFua0936376
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 13:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zGA3Oq2ztjRsRH7m6hUQJh
	4CbKtqI7SUD5euMZUYJkk=; b=In21xRST0FgnKHiBQlq31iybilG2BuDMw/kJbd
	sHq1JYDM4A7a8AOzMkoeeIqZxA2ZFFCGOleJS1FJIHG7GUpAs9nsNsDoMhEsMCYk
	aSrkCht88ppAzGoXwMl4jPXmyXk5jSxw1+VZlX2poS9bh2nOz1UYvv5KDwDIXNjz
	6Y/dVCD5HYjiWu/wM0vefnGWeWwTuCQLHqbhzCNEZHQcJmX1f3JqFld5rHk4eI8L
	7XN4jwGFpuUxX3pSBBnHjtP0fNU7nBgW7K+bcth2MbJ0pbv/CVeH9613UL4hsich
	0rzvpuJrUO7uaVbIL4jJwYkuqx7xusw68Mw4RgXwgJoxwINA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq04u27tp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:39:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3598d4b19deso18508821a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772717981; x=1773322781; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zGA3Oq2ztjRsRH7m6hUQJh4CbKtqI7SUD5euMZUYJkk=;
        b=Q8gLenFmAKU8IiykhAX8nYXoWtNad7neGa0W+4cZ729E8QLbcc5RoW1DZ5Gj/2mbjB
         qHh0UbBjfWsb6q4dQxBZfiPfaMcNWU6pplfnujIHxyu0ONHHO0QdsoiGCKariEntOVye
         AWHPSE4S9CRlehH0yBWfeQ9pFHu5sp2jico6klMqsBpkg3hLEHv6w+ukUtzPcwZbfLV2
         1LzCHxpXyZPoGpJsVX2c2QTt2lxbSu8UPlSCBm2X9IV7CoI0tBxtOLp4nl04i36PFjpY
         OW5c9LnXzb+YQoJffN/JC0Hhq0Xd3XuX+vuEM2utd69vUDwuQvdRgfDZnsFDr9G4YqJB
         jyYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772717981; x=1773322781;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGA3Oq2ztjRsRH7m6hUQJh4CbKtqI7SUD5euMZUYJkk=;
        b=qDsBHEFy8RPMkzbbLImbAdu6zLD5x4PKCwWQEj0QjDhNXfDau6eOsTMo57BZ7amtWI
         GZcwU63UVSvO9DWxaicdrxngn3ZVdNBrHkTgfjYTN2aZtCw1rUL2fqRKyoywMONZh4VE
         yfrugCaOletEK+0EFeV8XshRJB35nCeqcbs8WwFacM8JcIqVHmL/5bSnqmxEkFkFjEFt
         A6YXtMqS53BNxLBnde/O/9kJEwFn5KlBPes1AWtcjZARCWZ98OcrFbh2xZmfp0k9cgyd
         jmiKG8TdJvCb14M5/UBEpdVu0jWXgtA9mVKUEisn0ol7lJiFjrIhYO6xCp170VknccSq
         2QQw==
X-Forwarded-Encrypted: i=1; AJvYcCV5dWYTsog0Yq4Cgqjj20qeXXzCN5x6F2TVM+PGm3HzQKOBZI5BiM5Tm81j1YVdPvwuSaqAyCyPHVVc@vger.kernel.org
X-Gm-Message-State: AOJu0YxwwqUnRky+dPOqE69oMODUoICUuDKeSiQk1gnCX6DOTth08LR2
	6xzvw0IaMlYfrgS5f/Ka5MwAbjiJsUSXgyAWa4BCyt0/pjZYVSX2Br+WutILN/21SpjRTg8iEkt
	VSqABRWxQmMseMSXn3kM+14KYDhQQgAYThaIEZL1X/6lqM0GXMU6/5A2zXpLei7O8
X-Gm-Gg: ATEYQzy5neaNMQGreiAyd0Eli67uV3rL648Pnb70BsMGrsByVDIsycKapbShAhPcB2u
	HLxsz97RH6Rql4nED9aGxA/KmiIJ08Rpa7g+u+K9G7scZf0i/GLtCZsIX8KZCWvKkLO+xIeI1tW
	QaAr/gsMviXEHIfl6KrsdppEHNXlUx3B3Ayk4/CXAR7L/50rx24uVPmXrmZ+T7mpty+Wzh0mrB3
	XCAUAep7pd8BxvlGFL2V40oWYlvCMz8HRVE8CGI0QkRVmdobTqP0RfDlLUPB0EntdxrJf/U7hC0
	u0pEdruyR7+Z6JYmJN8z5co2iam5NbIsMaVQ9z7Jr+awjFGSxZT3tM429KShbtvYgrSSAkhPHNn
	/LUR/oSIb+A1ZqiTt1f+Awww9exGfTOwb+U0uB99rWS7dRp0iLjzVF2z+Ag==
X-Received: by 2002:a17:90b:2691:b0:359:8f13:667d with SMTP id 98e67ed59e1d1-359a6a563d2mr4442546a91.27.1772717981025;
        Thu, 05 Mar 2026 05:39:41 -0800 (PST)
X-Received: by 2002:a17:90b:2691:b0:359:8f13:667d with SMTP id 98e67ed59e1d1-359a6a563d2mr4442520a91.27.1772717980618;
        Thu, 05 Mar 2026 05:39:40 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2d5fe2dsm2195236a91.7.2026.03.05.05.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:39:40 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Subject: [PATCH v4 0/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch nodes
Date: Thu, 05 Mar 2026 19:09:30 +0530
Message-Id: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAJKHqWkC/43NzQ6CMAzA8VchOzuzbo6BJ9/DeBisSBMZuCHxI
 7y704se1Hhp8m/SX28sYiCMbJ3dWMCJIvU+xWqRsbq1fo+cXGomhcwFKODk3SmOgeyBd3i9Wk8
 e+VATcqOdKzQ0uhIrlu6HgA2dn/Z2l7qlOPbh8nw1wWP7jzoBF7xStSxF8k1ebPoYl8eTPdR91
 y3TYA98ki9QCvULlAkstCnR5VVTKvgCqjcQ5C9QJRAQtCyVsSa3H8B5nu/XXIe1awEAAA==
X-Change-ID: 20260131-industrial-mezzanine-pcie-75dd851f5b04
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772717976; l=5641;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=P669zhMqfF9Y/Ri1GL7+64xRnAT/5X0TMmRDwIMqyHA=;
 b=JlPOov7qkebBbns1KBCK4WF3NOeOlcJ5fJgxvMp1TBYLnnEIcS7r57V8Taw3V6lHfFk7oHi77
 IOAI16h6QOqAVoJTU3JkVD0m5LkX+qLgeNxnLMyLbOeidE0K9Kx4csJ
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: LTfeZMD-ls8eNOc6gFCcgDqP0TNRgS1A
X-Authority-Analysis: v=2.4 cv=eqTSD4pX c=1 sm=1 tr=0 ts=69a9879d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=NDN-Thz4kSymccZKQFUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: LTfeZMD-ls8eNOc6gFCcgDqP0TNRgS1A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEwOSBTYWx0ZWRfXx7oNbQg6IGqq
 o2n8TIjszbP9CxrvjmHZfh2gyH8AMmMYahrWAzKDiMqLz90XQAdsvFgirw2F1PnwyfFEG4fQEaw
 8FA44GdkOBpmv05s4KUsRyoCd0TLjJHIm2rBI/IuGA6Tz/jM7n4zkpulK2rKZCK4L8J1ab+MJAi
 CF/lGzioIBfNoc8CnXjAaODV2X/EfB2n40Y7xu80kL/s4t5lCMQ8Lw0VW0F36x5Ni1M5amxqUou
 nd7Os7lpX5G/fMTPljf005yTjjZDzq6A3qBuCbnqGKPsguirct2HCEKHmuMKWcJS1aTBirhRK7w
 27tDNROJvd/PMfvRerVolZstrKmFB5EyKHJiC6x8UY03G/EB1zJxvLztaKVU//W5SCJUYFzYcrP
 DXNpErtC1OOh3yo/LQNBzAmhSD5I6iwXfo8OXapzpsLPH3PnLmauViO5png6LxbhhtUr5XMW+j9
 YvSQLbIz6e9nCPXmVlg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050109
X-Rspamd-Queue-Id: 26B34212AD4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271577-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add nodes for the two additional TC9563 PCIe switches present on the
QCOM RB3Gen2 Industrial Mezzanine platform.

One of the TC9563 is connected directly to the PCIe0 root-port while
the second TC9563 switch is connected in cascade fashion to another
already available TC9563 switch on PCIe1 via the former's downstream
port (DSP). The final PCIe hierarchy on the Industrial Mezz platform
would look something like below:

                   ┌────────────────────────────┐
                   │                            │
                   │                            │
                   │                            │
                   │            SoC             │
                   │                            │
                   │    PCIe0           PCIe1   │
                   │    ┌───┐           ┌───┐   │
                   └────└─┬─┘───────────└─┬─┘───┘
                          │               │
                          │               │
                          │               │
         ┌────────────────┘               └────────────────┐
         │                                                 │
         │                                                 │
         │                                                 │
┌────────┴─────────┐                            ┌──────────┴───────┐
│       USP        │                            │        USP       │
│                  │                            │                  │
│      TC9563      │                            │      TC9563      │
│                  │                            │                  │
│                  │                            │                  │
│ DSP1  DSP2  DSP3 │                            │ DSP1  DSP2  DSP3 │
└──┬──────┬─────┬──┘                            └───┬─────┬─────┬──┘
   │      │     │                                   │     │     │
   │      │     │                                   │     │     │
   │      │     │                                   │     │     │
   │      │     │                                   │     EP    ETHERNET
   │      │     │                                   │
   │      │     │                                   └──────┐
   EP     EP    ETHERNET                                   │
                                                           │
                                                           │
                                                 ┌─────────┴────────┐
                                                 │        USP       │
                                                 │                  │
                                                 │      TC9563      │
                                                 │                  │
                                                 │                  │
                                                 │ DSP1  DSP2  DSP3 │
                                                 └──┬──────┬─────┬──┘
                                                    │      │     │
                                                    │      │     │
                                                    │      │     │
                                                    │      │     │
                                                    │      │     │
                                                    EP     EP    ETHERNET

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
Changes in v4:
- Added the perst and related pincntrl gpios, due to default state of perst
  we are not seeing any issue with v3.
- Corrected actual i2c address after cross verifing from the spec, as we
  not updating anything through devicetree properties we are not seeing
  any functional issue.
- Removed extra dummy regulator as per latest discussions.
- Link to v3: https://lore.kernel.org/r/20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com

Changes in v3:
- Fixed DT binding errors.
- Removed labels from unused TC9563 switch ports. (Konrad)
- Sort nodes in alphabetical order. (Dmitry)
- Fixed styling issues (Konrad)
- Link to v2: https://lore.kernel.org/r/20260203-industrial-mezzanine-pcie-v2-0-8579ed6bf931@oss.qualcomm.com

Changes in v2:
- Posted as v2 by error. Please consider as v1.

---
Sushrut Shree Trivedi (2):
      arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
      arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1

 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 261 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   2 +-
 2 files changed, 262 insertions(+), 1 deletion(-)
---
base-commit: 4f938c7d3b25d87b356af4106c2682caf8c835a2
change-id: 20260131-industrial-mezzanine-pcie-75dd851f5b04

Best regards,
-- 
Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>


