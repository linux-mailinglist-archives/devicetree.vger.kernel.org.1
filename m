Return-Path: <devicetree+bounces-260015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GETbGA3qeGmHtwEAu9opvQ
	(envelope-from <devicetree+bounces-260015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:38:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFD897DA1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C44F8301ACF6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665B23559F8;
	Tue, 27 Jan 2026 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JScs+NA1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I63Ih9So"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2084F35D60A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529353; cv=none; b=QrJ+VRfYhANgJXilG9gPoY2Sa3gcCqZ4S7EwnvZDIZpprIVkZFQIu7WXhs9SE5pfx4PbPnxg8dZNnEJ6u79hPb0Y2hlPoPuOpKurDltD01TrBPZiCyRARZLPuCrmK3sQi7Zm5L4G7/9hG1IaWTUwps7b0vbAvOyB2LVwQkH9dwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529353; c=relaxed/simple;
	bh=+9gmnC1MGe3XkjrH0M5uYa3M7ZPLjuPKmCKG8k9lFDw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZaL8Ruv39VkIMFmaAwORm16ddUUgvmIhAx32x0h48ckEEvOcEp/GUaYggY3jqMv8wr83QO9UEfgGbexQdKthKvTroq48vC52UeSAvHXLIbk5gdnI5Nl3qW5KqJFoP9netwamJMnZzkhUEjCqWA6gms97PKu2QnssNqNNQFMswEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JScs+NA1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I63Ih9So; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAKZ00496005
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/biGgp8T3Om
	BdOANgYQbjRR4h3qGXPbPOnnjUtiHo2E=; b=JScs+NA1rR9mFoa4SLiwffGgRtO
	TpK4YpFknkRWgB1td/OY4dfaBLzGAf+HlhbmzflxxfBlbOL03jdQ/LZ/4KSBzCmM
	ZBg/mqSFfZVMCMh8SyfifNTbm0z1tfhi7JO6tfDTCkGo70k3aDwqYrRU/p3BucxI
	2xPWcjmiZdijHS4DBsVOxfq6Pr5hUJ0bTsQ+QqI7Ghg5Z5eConfMqkf7DVU2MxcA
	IecdNQy8n/KhBMbw1qkATjOITasfkJEJGr2o0fY4LkfiXKrQalKwiusq+BiZr3f2
	egG5NjkG6ZcG1hYvzcyZreBf7xxISF2VtOBXlXJsu8fm001nyR0Pqdw6tTA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bkcye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:55:51 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-352de7a89e1so5098542a91.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529351; x=1770134151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/biGgp8T3OmBdOANgYQbjRR4h3qGXPbPOnnjUtiHo2E=;
        b=I63Ih9SonbYjHa42XEc7QlAvcFdl05T58ZM+WAZVt8jQ5XQ/ARJbByEEC5CvWwGpm+
         puVvhK4da/qr90PscUJlsLETuC6GdI4blliGELpCrI96Gaup81VEtYOBC66VF5cCRS3P
         xDV9zepkZiBV3CNBIDm644jq727Cb2TL1QSVYEIaxCnev/rqZlXA6yIAcKnTcdTdYOsd
         U3hBpG7bSF9uoFWiHJLoPmkcdeQmW9uRrP2syW/BTHsZp2LVn8RJ6WIo+DqmVqRiiKTi
         JaTzlvYaNJxasB0m1r0LAk6lg9YCZVtIuovjWh6qeJVsk08ZW0Tbqci4mcBfKa97DiIg
         cPRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529351; x=1770134151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/biGgp8T3OmBdOANgYQbjRR4h3qGXPbPOnnjUtiHo2E=;
        b=KCrVnZFd7gVbLP1ZxjyYG7xri+fmNH6yf3FP2MrE15hgIcYyapR062iNwwalArQ4Vd
         A/+sUpoqYxGze3WnZYReuhQdygmwWk01VA2+eLkQumMWmeSB4xx17vDu/dNMVyTSCsSF
         sIxeQ6JhnoccIjdgXOJ8wzlfk+HI3MmBtCbHBNyKKP2mRUce1UJL9RXOQ6rBvNlLNzGY
         GEBipwyPgnvcEonX7b9YMCYTfBwlhyrJmdpZpWoijuSXqYkkCqFWTAQH+fLMQkubdqe+
         mLVVS6meizUNlzOUXwv7E2z5wmRNDDLRLA2BoIAUdGsAuXPckzdYp/NvDB1xZMMN5XMe
         zEdA==
X-Forwarded-Encrypted: i=1; AJvYcCXHvELijnoQ504PYjfi2O3ryGcwg3/X4hu7JNiFMI1NdfFnMK3r58dsQYZ1qjfQ2NbFJn2tyth8aS/B@vger.kernel.org
X-Gm-Message-State: AOJu0YzZKhmvGWgQ6gMNMngzmTCcPqdJ1euLsVlhbMf9yXcaxOSFqPcg
	8R0Phy6RxIDAT/jPnmYflNBGetkL2eAWeia4BOiNRmItY2/bb7BPnlemk7YxzLyAsh6m0RNC3jR
	tswXtvhFFMHBLqr3aptukRDKvRFFtWDiG72Ojf36hTM1h+drYjbKT6V6hml1+B8H0MxROOeUz
X-Gm-Gg: AZuq6aJFO19BqE10mhClsCAHm5H6seooas6GHcd/VEMsLFJEBrUEE4icInB6nV37ooA
	Z7Cu/KudBnfd7WOfgGcQx10t48y6lBk/dJNqG3k2AeuLLc/1ZYGFKD1fjBINLVdauwuGu58cXOP
	qI/q2yZQehC3t3vxaHnbnmC09KXp+UTpvKcjN5bIIn6SC2bxckcwE6y5EbPsMfJnMdjUchrqGZ9
	kuF2b88ADUBU/7WNS6cpjOebsgTHvUPFP2asCBrvkL7KATSujaeUW6lgmQBsYebElbz3k46D8cz
	nUoineXpArEarLFzdwQNquLA8EkZgnfuQMkQerJmCMz1v3c3kQ0PFbTMH3//cBkocTaffBR9Hqa
	9NoDayiKQ1mHjVP/EAD2SeQTGJ2q1X6E/hNsXYhRKmuhqIDo=
X-Received: by 2002:a17:90b:4b8d:b0:343:7714:4caa with SMTP id 98e67ed59e1d1-353feccf4a8mr1916498a91.3.1769529350601;
        Tue, 27 Jan 2026 07:55:50 -0800 (PST)
X-Received: by 2002:a17:90b:4b8d:b0:343:7714:4caa with SMTP id 98e67ed59e1d1-353feccf4a8mr1916478a91.3.1769529350156;
        Tue, 27 Jan 2026 07:55:50 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536aed7802sm6131475a91.0.2026.01.27.07.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:55:49 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: talos: Mark usb controllers are wakeup capable devices
Date: Tue, 27 Jan 2026 21:25:36 +0530
Message-Id: <20260127155537.4088709-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
References: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 8lohPkSGReH_rb0awp3yenjYumg7Fz0E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX//EvNUtvDeej
 RdTTSLsP+Z4ATRJU8tLS+UlYmdVSKzs51tGHsgF2ed3uHWGJWGEy5+yxzk2fkE9VXlvDu2oZz+6
 etL9aykb5Hm5vAhsVvAwW8niy2T1TRaO2eFKsRnrQF+4MAxC+eTLd2pqAERR1SNpJKsFTL5a2Hn
 QgefTwISM86MbWpI3XZNThbm5N3cfE9I/ld7J8bHphz0SY1zICb6dHIUF/e5v/co7rM+r9U2aKQ
 5X7Zaw3LaOvhkW1SsiqQQwTVL9QvKKQNYWPzGO4K+b4KLrlAQ5XQR4vqCIlWPGUvsd8SUwBh0vc
 dfVJv6fot2GjYTU6E/OYIps3vKl/GTXoPcpfJ1gq8DW3eBHdlyy4Toe7J9sK7dEL13UTO41+PWk
 0zgLq3FY9n+zwOjvEymCI9ydV4aRT5apcOc07NzYnORePp8+sA2oCBniDw1JTJ3CedCQP9CUaFo
 O/U9HBqPUR2wAdoCuig==
X-Proofpoint-GUID: 8lohPkSGReH_rb0awp3yenjYumg7Fz0E
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978e007 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NoffK1niIyA4o_zWvw8A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260015-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,a600000:email,a8f8800:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4EFD897DA1
X-Rspamd-Action: no action

USB controllers on talos are wakeup capable. Hence add wakeup-source
property to both controller nodes.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 75716b4a58d6..315dbf3d9bed 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4527,6 +4527,8 @@ usb_1: usb@a6f8800 {
 			#size-cells = <2>;
 			ranges;
 
+			wakeup-source;
+
 			status = "disabled";
 
 			usb_1_dwc3: usb@a600000 {
@@ -4591,6 +4593,8 @@ usb_2: usb@a8f8800 {
 			#size-cells = <2>;
 			ranges;
 
+			wakeup-source;
+
 			status = "disabled";
 
 			usb_2_dwc3: usb@a800000 {
-- 
2.34.1


