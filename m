Return-Path: <devicetree+bounces-265630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBslBYcRkmm/qAEAu9opvQ
	(envelope-from <devicetree+bounces-265630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:33:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F32D13F658
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82D9C3016EFA
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E999623ABA7;
	Sun, 15 Feb 2026 18:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OzOlScUQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sb1vqEiw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FED18DB26
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771180419; cv=none; b=oyy55tdz5ooNnCjMefEuYhHPEv8YExfTMxrYRlFWwFCW3oaGoPhYxTFBBh0O1fWgVQ9nbTIor/FaRs79+bsReQ1u0jzwyaOSJq4EsY3xcra01/rZI4o0twlyOGQEzicm2VehcvQSnTEJDgiQCaMGk1r7h1GvfXp9ulBw7rMHBaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771180419; c=relaxed/simple;
	bh=1zQqEUKVytjO3fXoWk9bZkP1zJln3nhYt7OsCSJbvXw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DmbUomXmLj9UyVyZtg103ZFqUu04usBxMxaNizU3uZOFj+Ddl4Cp6rju2i5btnknGQMOTmrOkohRDpKgMd4fM7RH7gX9mgnuMCwc7Iizg1/XFkJvYWQy0bKrBSQ4nV/8SMJkU4vcpbV4lGDcC2YeyqF/vdd2Gi9fSMTG+43yMeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OzOlScUQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sb1vqEiw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61FEuaOi2671392
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Zu9DnuLLdKt7ycUHmuRUrm83WHsj11keTyu
	MlQeQOdY=; b=OzOlScUQr8jH0RBbIe+rR9gv3U6g/uwfd6ajjkiuHdgNzdfoCFC
	R/Qbze7t1GWW004BbXB6zOiVjy+qeRX8jJYz7hS5YWVtRhVqCdgl5D4copzGIekU
	RnTTWlf5uzQy8HAhf0rUWDY42hyYAJw8f97A9ilgWvYbXInjzdcejxUXIoqoUmlZ
	MxdrhgYwVJo9d/C+ZvfCm2ev5y+gOKv9CT0MJlO3orK8CF+DzMmGgta2ceerts85
	mbGL7XdFg+lCgV6q3nIVJ6bV2UfE7xrGcSqZpyb0gxXwSEGPe77J8Vwd6lfHJQFs
	Bo0anOj4X0PMw6YeEsmpQ/VqArHXUcfBEPA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24asmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 18:33:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6de06e6c08so1843119a12.3
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 10:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771180417; x=1771785217; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zu9DnuLLdKt7ycUHmuRUrm83WHsj11keTyuMlQeQOdY=;
        b=Sb1vqEiw1v7NmwkeJNVU72asTApjb/NqkqeKyb20TTv1mmVAdd9eHJfdVobtKuG6pW
         Eq1c9HjV1twLTuDZ6bHZzIoEGXlbLu7huHOJ38anjxuYfwbPG5EB8bqDV0m0k4omW38G
         KOWblSg5T1FSWG9zJQh7b5ApfvrPb8LtQ5j48wIlRpHjeArQ4d/Qogude4c/+ETufnNV
         l2AN9nQO7FB60Ibw3XFNI9+3mraXiZWJ5uwU0AvUdJYUWZSEW1Gk8dOSLmQiZfrZQf41
         wuqyN1vf6ZoK6/wrCEmwiXSYE+FG4vhXh6ZAEi8oyQWgdRVj9JdP9b7TKV2Shv+1OvKe
         6aig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771180417; x=1771785217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zu9DnuLLdKt7ycUHmuRUrm83WHsj11keTyuMlQeQOdY=;
        b=q5PPP05DuBQnQmiFkv9hk3wiqYV7jed7Mcxa9ewfue7uxJ8e9ACT65387kebkQIJQ4
         5tzJ5A7+puXtFW1OLliB8WKhKTN6sVQF7iVYnTzYOypGu/dnjUSXXh9mZCxGY4+tJdzv
         rWDCWSITq7MPS38jAmPhXvt5DnBSA3bfiVaMrOFONVRkZjEiIMJk8MmL7nrzGf0i9yII
         I+x0u+6IizYlgzlmv2vID7YFRem8rMIKLGdxWWSmi5BwJNJ62IHSrZrIrjbUDAutqhIZ
         zIc4TpBwXW7pbaRfjKrpDNhBwsNso36yj7OOHvof2SNiy6afPNa1HdLooqIPLSVHjfOS
         OAJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrRvxRdQ4kDQ3evexluUeG9WeUQqd0wrpmF8FS6V3JCs3KbRDl/Wri7ek0/5r0dlit4GKO1vG9Mykv@vger.kernel.org
X-Gm-Message-State: AOJu0YxQOOmHgy5OE46ZTuSawRWG4V6V6lNk7sS8Ay9EruZ73aQcM+OV
	gEhE4QmmPFWCM2Br44aX42AQ3ZnQ+Dm4rL05oYFuJp8z+TckeHajbOqBYkopjzC2Mhyyl2YOUGF
	O0Q1G7wtnbFh6+MoISU1QED3G7hPxnmjg+c44k1NTQtATZXHLGoRsHeIK5arj0KP9
X-Gm-Gg: AZuq6aICKjfLQWRNYh8FONha4ud/6IFrQydLgUkFNg6g2r/PO6VxWer/FObYtO7Cihv
	xMgId+qUItMZTohlE7q1qyErDegxHVZBFtV7ZbtscbCZzO0+MCMbwKBBLTOVQNvHCWbnseUoyvf
	mH1/ixX73pRy7+Nv5mn119gndXpglCUTFxKKXzwUZAbtIm2/O3qz6Vi5grEcpK9b5yvI7qqYDQt
	Dlj2V6pIgxesJuA7CVRx42oHrHFpyPfD5/qNPoI9+ZM2xKpFaTj6KVIcUnJT/bwjeE46gBQa74h
	JEYzDIXN8xtwzTybmCFLtSNnCqDoN4gfJFJOSh+9bYSwsRn4kdY2oN09WjQvs0eUBn341kBnYtO
	LT17sBVJKnG810oDLmwGXG2HG+hiGwyKTwYYbaKzzeg71i03GJa32/80=
X-Received: by 2002:a05:6a00:1746:b0:81e:dcb2:52cb with SMTP id d2e1a72fcca58-824c94471bcmr7170576b3a.2.1771180416698;
        Sun, 15 Feb 2026 10:33:36 -0800 (PST)
X-Received: by 2002:a05:6a00:1746:b0:81e:dcb2:52cb with SMTP id d2e1a72fcca58-824c94471bcmr7170560b3a.2.1771180416254;
        Sun, 15 Feb 2026 10:33:36 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2afeesm9560875b3a.2.2026.02.15.10.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 10:33:35 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [RFC PATCH 0/2] Add wakeup support from system suspend
Date: Mon, 16 Feb 2026 00:03:23 +0530
Message-Id: <20260215183325.3836178-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YTwkpMMRR2G0xziPlmJzQhjdWHicmzVS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE1MDE1NSBTYWx0ZWRfXwMt1tFrdR4VL
 aenvN4TDRFz8L/tGfQurnuWyf59cuY8S1AqC9ETVh5bH+17QME9xkDLNox/BgZ2+RSCNgXaCD0U
 s529RWX0wrOZDHhmAL1kRBb6IEiZj1NbFmJ/twVzOsObM2kOW4aiWqTBUgLzCIDDvGfYA7ijCun
 m4xtjZXBjlswtfzLJ54qbOqTqHAe4+AJQiLh1R4wBDsogG9+AHcZHnerO3rzeWCAhyOP/LKufZI
 5S12oeKugQLRz7aQoHYjuxwzCBEYZjujtL/z5fi2UVnuTNAIxgblW8JVwZoalmSd7NB0V1kcOGp
 /kBZuBh1Q9RfXurv1e+zB2q0K2Ud1MBzMhDnmrT1nb/X1xw5gDcfqpiOmMfjL5OhSU6CxP5eEYs
 bDmIAerg+teVxmm2vIoEEDzKaRBa7zAmLih4ReML4F6q6gUzqWn/nSPvsSOzJGrPdVf0c+o2EEW
 MQQjdJhzIJCXHwrC7RA==
X-Proofpoint-ORIG-GUID: YTwkpMMRR2G0xziPlmJzQhjdWHicmzVS
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=69921181 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=IzbIpCLcpPedZRU0gO0A:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-15_06,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602150155
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F32D13F658
X-Rspamd-Action: no action

Add wakeup support from system suspend for primary USB controller on lemans
EVK platform by making interrupt wakeup capable for HD3ss3220 port
controller.

Swati Agarwal (2):
  usb: typec: hd3ss3220: Add wakeup support from system suspend
  arm64: dts: qcom: lemans-evk: Enable wakeup for primary USB controller

 arch/arm64/boot/dts/qcom/lemans-evk.dts |  2 ++
 drivers/usb/typec/hd3ss3220.c           | 35 +++++++++++++++++++++++++
 2 files changed, 37 insertions(+)

-- 
2.34.1


