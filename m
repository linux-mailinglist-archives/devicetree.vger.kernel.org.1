Return-Path: <devicetree+bounces-260192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMQrO1iseWm3yQEAu9opvQ
	(envelope-from <devicetree+bounces-260192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:27:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 109BA9D6B8
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 917773004D87
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B242337119;
	Wed, 28 Jan 2026 06:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UsuDvuaN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Quvj8A6U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0344A337688
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769581652; cv=none; b=VcWj0awl4LSf8rdzgCxdtzKsR6rx13Rj0wGH4QtXIfiViTA5GGSCEwyoeU6CO3aKHBQ7U6S6m8NUdNF7X8kblWk9QGcAhc7hGb9xmE2Rh7Mdne+9k8kDNLpAHtd8CexQUpETl1B/RvX0Cy2SNKQztw19BWZciJEOFfB8OH6F5eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769581652; c=relaxed/simple;
	bh=Xe3KPleQc1zW6csRIiAocjXfU/8aeHv+lJPe+k/UV2M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PQsCB6mKt6whyZE2Y6aJKy5GX5xPYr71TIcVUMVG4adKXuuEUG2DkIZNF1fuUVtEopGbSKu7clfDxqCiYiiNOpo455AjBpd5Qs/NazCwKALZSbXI2k19vziBtZXO7OgT/dlA1bA7v9ch4/peErMWwudeUti0X+yPcF6iEDQwHk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UsuDvuaN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Quvj8A6U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3X16c2728642
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=1EqyNg7XrcvdpwaoVaEwAUPHZ4OY5BMwz2o
	ZWWKTUf4=; b=UsuDvuaNXvanswW4oRBIkC8THHMuPCb/00zMWNQ1lPAJlMkPIkG
	TEMMtt1oEIJeouG5dVU2DtFOVnqh+8ckvqRKyeyGbni55ES5Wz6W932Wwj+rfpBZ
	9/Ew4o5F7lsjsmTtUp5UetpS1jhcvJj7Y/SoMFbuqpyW9/OKhKKJDJQe91x/OVUE
	7Rto3ZBmi4V/0SRSHTggJQ6gjUaLxkRsgZR6eyPnSFd+tIKcDB5TXOSQ5k304p8b
	HsiQlxPwlh8ulT2PaodiJavSIk1uVrnkgpDbAQkqtpdKM9Z192gNMf6AjORUn2Ph
	jPURF/8qD2wnWeT2w9EiSF9f3hxjE8U4A5g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanagepf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:27:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34e5a9f0d6aso945820a91.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 22:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769581649; x=1770186449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1EqyNg7XrcvdpwaoVaEwAUPHZ4OY5BMwz2oZWWKTUf4=;
        b=Quvj8A6UKdwec7eq0IPKxg9iMQnTkRjhFwv8ktXhdfYDso0yX+EwCr7kyiig90FSyZ
         kDYJMrjKn8TGXhtk+bcXEDo9N2zKTzpCXt+XOrrKT0AOahXt4HygmA1nS0BSqYGbD6hR
         P7F2HVu8jkXRi9A6pJGw+EM2wbGLTYwP9aBooLC3O1rrD+mycoRTcNSJqOt7tsyWnfOJ
         moc+a91+3bUaMhKm2SN6iPpqk6x813Kw7Bt4mi0cBHTNkmqbmeyPkan5NhmDY30LKfRA
         kHKIhqrTvUOldhMQPjuE7aw5/rDqkW8oQ9UpuvmDfv5hh4lpSLc0Md+9A5bRjHQHOmXR
         qeUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769581649; x=1770186449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EqyNg7XrcvdpwaoVaEwAUPHZ4OY5BMwz2oZWWKTUf4=;
        b=NwKBF6s+nC0FkN2CaLYePL5SIJXZBiI+JVrokQRpCZOpCmLw9vtm7+0I908oydXi67
         v5ogzvbmGnwXW8S3GrFGHRptXxQjhX9ZA4dJBitJIUaMrMAGos6cPnaAIVuzG2jbv4Gq
         Z7XQIz6XDmWZIxDnKvmimJipmx+sAyhGUoh7J07oFkfal7v4H2YbYisDH9j6f0/SfGy0
         2yMWwnb8vpTVyRparFWxhd1Rcm+A2OpW0skINmd42HVy6BfKG3TxfqMeLiWGRZteLTUs
         +2uNXHpUYK/7B2/ODYGR02peRp2rINT1Csp4uj/DGhL3C5U2XzE9/UMuoxD+kU9KBZs3
         /Lwg==
X-Forwarded-Encrypted: i=1; AJvYcCU9Hr5PSH22lqoqwxizzQeTGFTmOOG7wMQfe4SUPZUcIKjngp+x9oqzLuBbhDlR53gGtF+i8oD6pYNb@vger.kernel.org
X-Gm-Message-State: AOJu0YxSorXpo+HC0T1if3WUEuzItxlbR2HsK/+iBwJmmUSI7f7Fj9Q7
	qICh+9mGEkxuMrd71qhREESe5kCDRimvnQgapwERefkMtY9h8SlB+svSKd8mmfNfaJNHkLU28uh
	G9uFvgQ+eL15JRorEW7JfF2ytAuL8k9XfAdhNGBSe3NOTcT3UXPMxDcyNaSXTW4tmZRP0yb6t
X-Gm-Gg: AZuq6aIviv4+Q1YtkeyexV/zPaSrtvnnKIYQ/wCFLPAL3CglpOsST+rZ4IlGIEm89sZ
	nLfYmYKihyQNgvwrnrsQMiwU5Ze1PN+RaUQl25YYelNEmEGJBkrf4cQ29xGwc18KhGKbISqwO65
	9sX/Vodvtz44OxJxLzSwI7jkTpUqYWFfDD+tkSytWwAur/Y2vc8UdYPE49iQ61LB2QxZ1qpLRfc
	9Eq138Sm3Xm3kUozv+PeZTfnhFiS+B/BabIMAcwMGd20zKsYnwogK/RHJ7pm+UkhEUBhxI3ukdT
	j1a7yClNrsHDLyiHqiNdaYkCRpWw6uQCftsIAdwFxbe9db/QdZiHELr88fh8aSoPLTyc575U0Y0
	ByrCEGCcnr9dwyKDHuIw7NntREjfv8apBQPMxFVWIe0Sbru0=
X-Received: by 2002:a17:90a:e705:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-353ff8b3d60mr3462344a91.3.1769581649384;
        Tue, 27 Jan 2026 22:27:29 -0800 (PST)
X-Received: by 2002:a17:90a:e705:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-353ff8b3d60mr3462325a91.3.1769581648799;
        Tue, 27 Jan 2026 22:27:28 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f17955asm1276381a91.0.2026.01.27.22.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 22:27:28 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Flatten usb controller nodes on Talos
Date: Wed, 28 Jan 2026 11:57:18 +0530
Message-Id: <20260128062720.437712-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 9pSMngWjmwzeDDYQtmTk9q_C6nNn5bV_
X-Proofpoint-ORIG-GUID: 9pSMngWjmwzeDDYQtmTk9q_C6nNn5bV_
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=6979ac52 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=wwCzRCD4zyfo-UnKcXoA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA1MCBTYWx0ZWRfXwm2DiDaQrx/q
 3K6XAw3kxea9xIl9ll+KxIpkm90x7JVSIcR/9816vW9kTC6VWJEihh8xbWbU880Omp1t8qlzz4D
 gNxQszKTt17l4j5knsbadnVNdBcUAXKehw/6hrJ9GcfBJS/gQV3Jg73rcHURSSpeoRofNjGxTfP
 ATruvqMAXsf/k8NaFmN5qKpzpAYxbsIdJjAkAWbPxjAB/zNIuALkoXhLmgkuInO4Za2tiGDgY8y
 k273pqKB8xp7Jish0vGoAZAAi/65+LRaie+/4vscCd/iwauEbMO6uL9QO8tszuCn3FjDacIk/nB
 ICMkfZABFy3PbMWN+x5pYd20TKcWekuP6/r/pj59PHZFb7iPmkdtReeXAF50gh3fLMLMouaLLkk
 4qH54JTGFToSp+xFNWCl8R2KZ4YJVT0ahOHXXztK9C+qHZHU3vri/nxQ6v9P2XOm52MX+Iu6H+3
 4nPW3xWEeXU4PTLEXDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_05,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280050
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260192-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 109BA9D6B8
X-Rspamd-Action: no action

Flatten usb controller node and update to using latest bindings and
flattened driver approach. While at it, add the wakeup-source property
to usb controller nodes.

Changes in v2:
Reversed order of patches as per comment from Dmitry

Link to v1:
https://lore.kernel.org/all/20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (2):
  arm64: dts: qcom: talos: Flatten usb controller nodes
  arm64: dts: qcom: talos: Mark usb controllers are wakeup capable
    devices

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 12 +--
 arch/arm64/boot/dts/qcom/talos.dtsi      | 97 ++++++++++--------------
 2 files changed, 46 insertions(+), 63 deletions(-)

-- 
2.34.1


