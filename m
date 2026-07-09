Return-Path: <devicetree+bounces-323535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ryagBYVtT2o1ggIAu9opvQ
	(envelope-from <devicetree+bounces-323535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:44:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C4F72F15C
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:44:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=bCZU86Nh;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=I8epDmw3;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323535-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323535-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17562300B44A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFC93F12CF;
	Thu,  9 Jul 2026 09:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181ED3EFD15
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:44:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783590272; cv=none; b=naJygKew53NwSbTrS8lVZI9WW6TyYA66DiOIYlKYURajBw+OMZmj5sCS/XgaO0FqeaSwzGNYcG/txkrRa1C65ad7cWIlREcaWQTTD8pB06D+3wyhzDfbfnnDQ1j/eOuO0PdE5MjM0TMGXUCkyk4W/1lA6k8uyXNkN2AMDX6a9fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783590272; c=relaxed/simple;
	bh=wi7GTvwika+kILy/x0kObyxehs4lyiYdw4TRzOB+FAs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sJ4GdTIc8h8VZ2bRRus0KikADyEkYXKDCA8QYJPi++NOGbm4e+C2Lh9hHVqJBHZ5QTP5gEkNZpVQhsOS/Nnx02ZgSU7VXdgjCYMbcL+o3odNICiQ265X88CiIocIZCzIlwt/vUJ5n+6CbHRhgTs4tNPB5oceNE6Cg25teW9Nt2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bCZU86Nh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I8epDmw3; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66960EMN931846
	for <devicetree@vger.kernel.org>; Thu, 9 Jul 2026 09:44:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=W5eVNdLaLjQwQEAOsLBvew
	fAgeY2bRP2rLsP4P7JnkY=; b=bCZU86NhXJpI49NXRNbWUX7ZhoM6w1WrKMuVuv
	ziwm/0Z3VVjsIdtXJ/gsIXQRRzN562H3FaEx6zkaRHLyo8EEdlkDphrdNOQYfvYp
	7GK+41QEw18WYyU4v7k+R/g5DL9smDZ+iX3YuXkJZ4wOIdk+snLLQ0AXWlPLvM2F
	yjozeidKl9rzeAIM07CV+x7SV4c0ZS/dRSX1ti+YYyC2hbSrwTWr/kaNL9mRD3pP
	lgMWHMrYREItntGECGXsyr9sTlxHxAVtRtYzu3LG4Ho5/d+h4+/p/PTXuto5suXM
	ci9nvsgDZJGxQfgluW+aMyYayu4oYQn6ofbnO/RZ3gUf+iWA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9sqsbj8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 09:44:29 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-ca124bf0189so630959a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 02:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783590269; x=1784195069; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=W5eVNdLaLjQwQEAOsLBvewfAgeY2bRP2rLsP4P7JnkY=;
        b=I8epDmw3JmDFMIvnzGNmoBy45hMqbln0jqmrw8KTUWpip+pncdc0ExvEmtzhNtO24B
         EgE1yenExtrVRgvFRV9blwLxcwkXwClCEhhQV4LeEKa9FhEkXaXvEM0QbpjSxRmZZnj3
         D6rVfItrrYOXWEci49+jkoRi7jOl8GAZd2jQ+3jp5hTK/hiYk3h/koVKsWnqI9GbuAPG
         k7w2EZIt0kUwy/ffmXmTI7Ofr9XoRDgM4RnGRTqOwb4NloYvGQst0RW9AYWrSINpy/6s
         e5vCkVRRT3UU5JAlq3TEp31lSIsYAqLMIy9bzB3uWxvJSbzSMFNFGU2fLbyDPtJHiuK9
         sf6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783590269; x=1784195069;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=W5eVNdLaLjQwQEAOsLBvewfAgeY2bRP2rLsP4P7JnkY=;
        b=FRDWAeXqql9vhQRO1EUBPuWvGnpnzZMuCNUBK9Hz1mEvBa4Zk+EwiynZSUNNkOJHSd
         3iEUTf1GD1xzFURVLBPpEcYgNC58OwxqrbtwI1pd2EUaFDXnufi5IlMW5HZmAq2OapcF
         pElKagqIOfD4Cokp2p0vYKILo+gij6dsauWmlPBAD/auwzUjXV7zS75FOipgXU0HCw7O
         G3T5p3+I0K87qVpxyltMSB1Cg9i07Y19QOb97qpzR0ty8uIA6PJ+lP7dKINjL/SDzdVv
         3fEziUXw7mwz4HxwaoC5XcEVVIS6sZpZqc390xyHxvLk7sjYKtgdFvS1d/F2jUHZDfds
         qdxw==
X-Forwarded-Encrypted: i=1; AHgh+RrEyIp7mLfBPJgznPSMxWssEguPaH9duxMZKwIj5LL9F8fhhxe1li/zysigiEDGe7acpYceW3qtzFYA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2DRRbwAHKA89PfQkQDZKQ0gKA0B3qGawt4MsvN/hdXHblP7Yl
	xvlR57SsefC99hN92kMGWsLEgxYNJ+HfrNYor5f8CKrwhSt/4KcIYhMvo1LVeSPM7HMXgb3dhEJ
	sUj5WHLGwueytIplWL3+XlC5/WQ80EEK1TickKOO2nxusJOHjdbRO6Y2WQUng93lZ
X-Gm-Gg: AfdE7cmFlNIW1ijXuPsI47X4Jw9LyNMrQHa9FXrwiYKuWGD339+HiTgDRTIkQPbQCJE
	ALJvUZhW8D/XUQWfIC8JnnSIdyOBLVvM+BGg28AeQPHOsyYcYO0PM7SHz26Ed04/cJAvvfqZ+wW
	e+kELR+TEmwKNdzSkrUy9UDRHQvahbDNCFmNzyBlCoIwGqkGMqXKL2oZGYiH1WV8GGe1ac+NmCO
	2J8s+lv+OKABWt1uWEhoxfc4koA7Gm+A97fs3CmI5yVBkT1shysOa2LNyLYOATfUKNNJQceOmRl
	p4K1eF2pwAy7MmeoVbwHA0FSQ//wHhdjwrptwflmOYcyWk4fl+2u32itYewb24dsLTF6A1Hy4py
	ebNW+ykXXTrY3JiLYBDUbP5U4afo64w==
X-Received: by 2002:a05:6a20:4305:b0:3b5:530d:d96d with SMTP id adf61e73a8af0-3c0d67997a4mr2205110637.12.1783590268912;
        Thu, 09 Jul 2026 02:44:28 -0700 (PDT)
X-Received: by 2002:a05:6a20:4305:b0:3b5:530d:d96d with SMTP id adf61e73a8af0-3c0d67997a4mr2205077637.12.1783590268411;
        Thu, 09 Jul 2026 02:44:28 -0700 (PDT)
Received: from [10.213.109.130] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5afeb060bsm3493075a12.14.2026.07.09.02.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 02:44:27 -0700 (PDT)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: [PATCH v2 0/4] arm64: dts: qcom: Add PMIC thermal support for
 Shikra platforms
Date: Thu, 09 Jul 2026 15:14:01 +0530
Message-Id: <20260709-shikra_adc_support-v2-0-8dda38f7bf3d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGJtT2oC/32Q3W7DIAyFXyXielTkB0h6tfeYqgqMs7AtJcUk2
 lTl3UeS3k3ajaVj2ec79oMRRo/EzsWDRVw8+XDLonopGAzm9o7cu6xZJSolVFlzGvxnNFfj4Er
 zNIWYuBC6U1Kg1QpYXpwi9v57N327HJpm+4GQNqfnRMT7nGnpGGMjEpmdluEHq3qyuEt8UVxwZ
 RVY2TrbaP0aiE732XxBGMdTLputNYR8a/h0LhBE3ZWVsro30GBt+lqiBTBGg+o7q1otrWlLtkU
 cPKUQf/Y3LOWe6L+LlzLHkdpJVKD7Rru/cS7ruv4CmcA3OF4BAAA=
X-Change-ID: 20260613-shikra_adc_support-0079650eb76c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783590264; l=2385;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=wi7GTvwika+kILy/x0kObyxehs4lyiYdw4TRzOB+FAs=;
 b=OyGsAPu4TjALnyoEGuLFFkDw11ZGzmKNaYSK1c6pRZ5lqB0+2TMmFDhFgeM5KZiQ6uvafNkTI
 dGUmFEKXHk0COiXxLsc9iO1JqbGTOtX/ZgXjTroLivdCLo4h0jyc3qE
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA5MiBTYWx0ZWRfX8kY/3IZX4J0Q
 XD9fKQSDsUce1h21z9U4Rkz4n8+D6A7HeHDfbebDLdyZqo/eS13LWA19uVuQwUSf40LHN7tEfgZ
 bBC+cGXKWCP7AkKAv7g4NOo9qEOQPIo=
X-Proofpoint-GUID: Lebh7DL2uG04vG6_mUmQOpvvUEZaLXAV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA5MiBTYWx0ZWRfX38bBEo2UNYsY
 hN+R994EfQQBzMKSE+s56wuKR9Jma9kf7ohZVEyhqfHr6ZwNb5XfwJRqeBSDUe1WAPldxjkoIsc
 pCnJEFiqMyG/LhZ8lS2WpvUBc3lOH7MXr3Q9YhVmnMCPKaW1c8IWQUf2Dj2t+TT1qWETNou7XUl
 lJq+gnjhU6nEAYa588+fUE2qRS8zBP9HSrLRwgYikYvNo8Jwgaj4bJCzKowkIvXrtCQjAL95xCT
 QWT1as4MddIsPkWZ8zsplumO1TnRyoSJ9zSRZqKBFI/mcrD2pE7VvPGTQ8izO8vx2z+340ewNNQ
 PBP7sZGmVvoyqU7wKloUoOdtNhxZbwZ0VARTxzwrD/uMzpk889bFkPvnGn/G4o07Gf3FXTgThAi
 D6BdqII5Mu/3rrZvPXTVufqaO2J7aWM6OXIPewE6R01JxzGinZSpIr5u4C/rfrjMhNa0ONIPtj3
 abCS6O9drBwfOYWlLbA==
X-Authority-Analysis: v=2.4 cv=Sv2gLvO0 c=1 sm=1 tr=0 ts=6a4f6d7d cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=Ehwq6YvRiQ2Q07RnrmwA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: Lebh7DL2uG04vG6_mUmQOpvvUEZaLXAV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090092
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323535-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kamal.wadhwa@oss.qualcomm.com,m:rakesh.kota@oss.qualcomm.com,m:jishnu.prakash@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3C4F72F15C

This series adds the following:
- VADC and temp-alarm devices for PM4125 and temp-alarm device for PM8005
  which are used for thermal mitigation on Shikra CQ2390M SoM platform
- ADC thermistor channels and thermal configurations for same on Shikra CQ2390M SoM
- ADC thermistor channels and their thermal configurations on Shikra IQ2390S SoM

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v2:
- Move thermal zones to their respective PMIC files (PM4125, PM8005) as suggested by Dmitry Baryshkov
- Rename generic-adc-thermal bridge nodes to therm-bridge suffix (msm-therm-bridge, pa-therm-bridge,
  quiet-therm-bridge) as suggested by Dmitry Baryshkov
- Update commit messages accordingly
- Link to v1: https://patch.msgid.link/20260613-shikra_adc_support-v1-0-57d5e6c7f47d@oss.qualcomm.com

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Jishnu Prakash (4):
      arm64: dts: qcom: pm4125: Add VADC and temp alarm nodes
      arm64: dts: qcom: pm8005: Add temp alarm node
      arm64: dts: qcom: Add PMIC thermal support for Shikra CQ2390M SoM platform
      arm64: dts: qcom: Add PMIC thermal support for Shikra IQ2390S SoM platform

 arch/arm64/boot/dts/qcom/pm4125.dtsi         | 105 +++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/pm8005.dtsi         |  37 ++++++++
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi | 123 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 113 ++++++++++++++++++++++++
 4 files changed, 378 insertions(+)
---
base-commit: ec039126b7fac4e3af35ebccaa7c6f9b6875ba81
change-id: 20260613-shikra_adc_support-0079650eb76c
prerequisite-message-id: 20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com
prerequisite-patch-id: 3a689e8dda5fd2755b689d94d095806b3f2e6eed
prerequisite-patch-id: ac83151a889855498d36288ddd36216d451340c8
prerequisite-patch-id: 2357cac636e019eaf14d6a493a1c72bca56fe405
prerequisite-patch-id: 2885f299e711582da312ca9d13983d296a3dd5dc
prerequisite-patch-id: 91af5f3c01e766a53ce8de69aa21847a2d6bbbf8

Best regards,
--  
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


