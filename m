Return-Path: <devicetree+bounces-241628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB561C802AD
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 136F04E3851
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00352275861;
	Mon, 24 Nov 2025 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PdrE/N+j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PjqFxbmO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF5221A444
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983162; cv=none; b=CFHvwN28vfPYhI+s3ezXA8Duv388J4dWrqM2E3rV6xU5LsT+ZEFbwKXeVffSYgEsdrwKAr063q7voH87tVNE7P2EqdZTC+5VQkGVAErRrfa3Xe3xbNNC5uL6za2h1DbqUOCuC+JR+c1E2EKD1SDBlRA41S9wF3JSuQqHK5CwwKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983162; c=relaxed/simple;
	bh=A1OzAYdvgc9RjdmSke7QhThevoP5kSZuGzJW5TfJ8wM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g1WrSNAavJpq8DDwxToadqZZjEfvkY1HkOG0CwxUUGX9aeCpZHxb2Vms8YTFH9IyVaD0qbCyQeiHG6AJS4fUX/LigZqVxiVgxo0/hCneq0pNGV89pKOioH/WCI+olyXP2ykAWmktNeZjjzsiCyP69wC2fNIlbONBUrGFI7BPtsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PdrE/N+j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PjqFxbmO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7TSxQ3112448
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PKUXTfAuA1RceafhmYaH5E6j9u3nCyXoSEU
	a0Yo4Bos=; b=PdrE/N+j1Ogbww5744r27n86fgvaqFg79pjlUU02XNdXHa2Vdx6
	Pp6iX819p+TLfLjQcpqX6+MK+5u4HBXPN6ZADYY6iEG5rM3x/LjrW4ehVAu4DXJu
	U4JnCMVQPekx46XKZ1CA8At544ISyUrvxCqJlS9LJBRiskEXRZLWURZgD/97cQh+
	J22B3sGZfy29QVrrvh+ztQpYUaIHFLDWSzWwYzykTOTrJCKPZK7ckAFbSzyNASQc
	50G4zxMAiZOQ5dhyTjSNw3pRB3ZQR6rFYLEZ7lWi+lbZtbntJS6hx+JTSCkIrmG0
	UUO+Ohp5FTgl05169G8IYYf1RFJGUuxnDJg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10gpgy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:19:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-298535ef0ccso42860445ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763983160; x=1764587960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PKUXTfAuA1RceafhmYaH5E6j9u3nCyXoSEUa0Yo4Bos=;
        b=PjqFxbmO6RYT1mWZzNOES4UhTqT1XygU2YfsU7SHSMPeAe+5wc4bllhjXdR2BVSWXf
         QH8lxUfZtNCR1e/2Zb+oIgVZwu6vRt3CEtygHOrEJorJRpMTeTg1xZAbFl/aeZF6BIwy
         o/kcj7dU5HNj4A5FIJIUjUHmZZb5zl6nom43/3JIAxSJ2SkksUI+HZGFHPHvFvnmXfkI
         kdhnLBggjEsjKy9DFcEPSj0skdnuIco84wceJ0KObVF0B1w6Iw5q3EyRFpv8re4zXt/0
         q4kKlLhmrXV/pG5Wo78VE8tnNVra9DimddAwgHrAyA2BuTRHluXv+mBLpe+aBxUxi9UG
         525A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763983160; x=1764587960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKUXTfAuA1RceafhmYaH5E6j9u3nCyXoSEUa0Yo4Bos=;
        b=Zg5jDEM9gRBdPMuNJkOk1DdpG/gYntlsEaDq8dBDPAfrIbELzu27rvOXpVBGh8YUW+
         dJLZosRywwQmpfosPwjdjHxun6MHCPvOO7nPbUS1Mrepu9y5eT0SHJ/tH2vQu6ViVEA3
         kn7LaDIqxJW6M8v9+u+TgMkpbkg/ZwgYAVeTTdqav4nAcAFX4y/QWTAsMQ8Nf7HtH4VX
         fMY9i5eE5F8og/sPdhLHEviJhoI4wAushK78GGkAzdII0zSFr82la2PANr7quyVTGlJh
         pRbcJrTXDw2GKwRSGSeRS+IxqC/nH+djDJKn+2oOE57l9N1OLsg6ukK3r6n+UhYW1eui
         148A==
X-Forwarded-Encrypted: i=1; AJvYcCUdCf9EKz+clpwd1QcvbwzZmR1onN+dGuGArM/o8s2fVlVU45MEQhdD4eaOkyqh/3NspusVjcRjKXvx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/G39uWkMQd8zd50NW3C5k67cTnTl0kNlhcAZlQfA2+JFutGXU
	wZTj8mIRwKeLhqmZO+DQaVqQuW52w315ifMrch7K1iqjqnH2fUBVDjcIH5BBpsBCCQQ9kZ9ODvZ
	szGMSquVArgWPzvsAM28mLR0r9SQX232K0ge52mJ8/v452d3qdEdeMWv0xqhQvrKF
X-Gm-Gg: ASbGncv5OV/0QnTF3TD3lvPs8hKFGWjzhZ0RYWlB4+U2W0l2Q8w2uThrD5QJf18BEf1
	50kFeioS+GdqVzGyunXv6mMc/MExA+JnfwBGfKuY+P+OXmChkpeoIxG4xg//3hoENknMkC3t+Pe
	8qsIfu+dC9Sc27iSxneuxkHeSEV7Dq5T8gAa2apS7ECZ20dGmPl3+E1cLdm+nkCamqxhbBHeS6Y
	oamWG5e7y4zB7YFURcHKghPBPSQrbR48IKclQRhfpcw1vbhYyVk8QDeF116CRcblp7xOTr/xUhl
	1BlaGKoes/R34pLQj2lCFM7nw/8cEQLt0OjIWuqxvQaKsokNrZemfUaypQdQg/yueSBEK14Nq+s
	/DMYRRzL9bacxmcLbOjF8IqnrgRhWZ1oYzAbJe3HZ
X-Received: by 2002:a17:903:1746:b0:298:3a2f:2333 with SMTP id d9443c01a7336-29b6bf37ef0mr124716505ad.31.1763983160115;
        Mon, 24 Nov 2025 03:19:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFS1SSMFGCqXJSIY5ZUv6ehozkXPjEbUv6YVzBln35SekyMx4VqIvEIr5Axt+7AuVfrf6C1EQ==
X-Received: by 2002:a17:903:1746:b0:298:3a2f:2333 with SMTP id d9443c01a7336-29b6bf37ef0mr124716215ad.31.1763983159627;
        Mon, 24 Nov 2025 03:19:19 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b15b851sm130313165ad.43.2025.11.24.03.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 03:19:19 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH 0/2] Enable Inline crypto engine for kodiak
Date: Mon, 24 Nov 2025 16:49:12 +0530
Message-Id: <20251124111914.3187803-1-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: P7ssSbfG4gIAUcXC287giC2dWjp_DaC5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwMCBTYWx0ZWRfX4hPrXkcQwPW+
 9U9Zxc3BPE417nwZiUu30gZWj20p2cWwXJjiNmI13SqF1tMpGdRmvmxv25RbxhJdMQdAPcffv6F
 CK+icdflJD/kOKWdJvrPz4gXEC0Jzem/MpizioD1izMyNlp3YEMVrrKJCwYQcQH6tJHs+9bnXPo
 la9H02ApC61VwSU+eA6wchjpmPs114Kw3r67x+byApVn4nmt/yW4qgRM/5LyISDH0yQ34uG6shu
 kHbLAwmm9eodNS6lhEyN6lO7ubGdQ13MDkxqUoJR++0WNlqkJHLw3d9fYH/kE/krRk83DLX6Irs
 URqeIAgmMDON0m4Lss8LAKFbhv+XDQ7NuWR6aBLBTUkVv2SjFoVACkh6kn3P8T0NlmmEA42geYQ
 kp4cEv2xJvdVYzwjjyHsSfevRK2KEg==
X-Proofpoint-ORIG-GUID: P7ssSbfG4gIAUcXC287giC2dWjp_DaC5
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=69243f38 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8COUXyv7-X0OEXxtQ2MA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1011 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240100

Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
node to enable it for kodiak.

Neeraj Soni (2):
  dt-bindings: mmc: sdhci-msm: Add ICE phandle
  arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC

 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 38 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/kodiak.dtsi          |  9 +++++
 2 files changed, 47 insertions(+)

-- 
2.34.1


