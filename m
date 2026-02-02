Return-Path: <devicetree+bounces-261665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGrzDB5NgGlQ6AIAu9opvQ
	(envelope-from <devicetree+bounces-261665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:07:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B76B6C90F6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B4E430048CB
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D6ED30DEC0;
	Mon,  2 Feb 2026 07:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kB3JeT3p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R36TLnnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94BC27FD62
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770015989; cv=none; b=TbbATCK14cxc0J0acBWW/Ql9GoxvyA3QU2Rm5wV2twu7BSdUPBKd63QMDbkqpfNFaeQ/KAaSys48aQY+INIx+mY8REHJxzENeKzjUBkhj/PrPV6XQjRhDlLaUUoRgil6/TJ7ji2HhjcBlx/uj5Vdm3lG4loqpIynxa4Jo9lHQKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770015989; c=relaxed/simple;
	bh=xiCHT/wFzjlKiC/fOA41wNa3HTCrPxnBhSVnSBKv400=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mElI/5aEoGUQXo/u/81ErhR4H9djk4BJmBQD1uq7uMvn7qskvAzkesZ+IEffEV9AZiCEzmvFMQzj2ryf0sVBa2fEpcLUneQWLlF5UPeS3jtgML8IP/lHyOBQK71cSQ+105yg9NJTgSyn021xH4OQ9bKEYLi4sl6tAeTIX+RTMtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kB3JeT3p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R36TLnnq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611MkgHp582712
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:06:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5pTsG5jQcf50c4t/exdRGNh0EFMedHBavW+
	4U70mX50=; b=kB3JeT3pi8GN7duI6YpXYMDXYg17q2oO4ubYAEtpzsJzAL9zQyg
	8d1zPGCJlyWXsWH2cJJlroEBUDN9SFrKBt+QCKDvWh+bnpTTH4J5K1fEi8w5Qu/b
	QeYZ3296qb+4wxjAt9KnMjkTfHmtIg87prjg1Iu1kkTHY/p8I1ItEZRlx2InXXh7
	xW5A6K4Ix0jlxArEDdhx5BDEmga4Q9a7mlZfu0q4k4Ng2poavLN55To4G+6caXvc
	eCp7dwckEKtYRdm5GaS57u1XeZlEf+IbMkmCD/4bNHxgsQq5GOfII23A1s1+ZcSG
	PnTnyuGDRbo5YmXlQDjK4O5iNeNPKcBxXlw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1arec9vw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:06:26 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6366048135so3120601a12.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770015985; x=1770620785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5pTsG5jQcf50c4t/exdRGNh0EFMedHBavW+4U70mX50=;
        b=R36TLnnqHZBI7HAktg8tp4G/vmaDd08YiC4grFzL04sQK+kYWfXcBwgyuwqOf9Ue1k
         AP4M0ilDT4m7y3UO8RdoY1j3BL6GGb8TM8t5FdxJBQSiD6TyfHSuO/x/uqL6n1ugAK9D
         E0G7peWYxk0tEANFPUqE11N+CDHDSI3TTfArGYbmKr5cheZhyoBWuRbuHN9JBnpzujT7
         gr9xYgQMYpj693x21DlA6LDPCdlIMZisJ8oSo/39uqwUDirP1jxY4TGwBS6fLA3B7n/r
         NP3Eb5WpZNtDQHOhDlsDkv6F3wEQmtDxotnw38bkfH1iu7NhSSfasebokY57PDgRB86o
         SVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770015985; x=1770620785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pTsG5jQcf50c4t/exdRGNh0EFMedHBavW+4U70mX50=;
        b=vzD2oxznfK2IylIsGnGeKVRhJ9QWhk7b3O4nlA2hPcw0c7JppqnlbWAfwjUlgYtaNJ
         rIbjxSSyW/AzVh+HW7Ui/oPF6T3Ze9kxXzszYk8T2zifElmXpgwp2dChNJKFSGZEhQ6t
         jvSkTwUtHDa7oLWgBbtshySo59s9wn+ve2XMQ9+GsjpVToVGOyiu089FFfnzmyYJ7Qh9
         EPj5ril+vUepVSbFcLTwJhTVYcMuum5FB+vJb4IIT5SdYDGaByuTFd92D1eFqTFLf1zb
         0fBnxKyd+GEDswEipkQ+UQtKqbYEwJJtrt7lTlb/A1TcLhrM1QllPj/8vz2SPe4irwNB
         etcg==
X-Forwarded-Encrypted: i=1; AJvYcCUMOd5/fDbIH+raR4OOgcRSzn31sT3iya/emQm78obiSOdibYMAyTq2n4djIxezE98n4WW2B11AmGlO@vger.kernel.org
X-Gm-Message-State: AOJu0YzbDstrMKHyumH5Wov0WgoqLxMZ+mnFp4CDHBGIPsbRT6VvhkY9
	fgSrOuyLvOe3zgezV7bDAyv7NnKEKMJ9MQNxi1DoihWdhp3xc1f4R6YLR/CQXP39spb/53W2C6S
	ee0W+JKK7MUamypVNQ4LsSdoINn4qvj2JbyRrdGbGzq1PANL5MuV6i+mGAlW9zCmQ
X-Gm-Gg: AZuq6aKQyGQYUhv8AxjtWdVYyrpFMdiJLZxJ7/w6WtGbeHWv3SRVHi0w6imhip2+R45
	UMo5woapZ5CQLuKENm4zrHQLORKV0Srot0s9FC0qIMZp2TsVUq+MjqzAoNnrMTWcb4uX8pyS0HH
	Foz/AQqFO6A0SeH7YEbGr7N1SytSc5Rny90/C6IIOQJdwFavy3cTEazN/0RQeqSqwFBqymeip1I
	0qwQvQvWRfWzRfmfwlivwUhb2qKDlA47VdRz4uUKjGwqononBfiyuV7/2Oy1+iWB9+89hg+z0bJ
	ftFzHG3w3hLhx2ckeulovVfgY2V2w0RAyYmJQjTRO3M3mi1VfxzH8OXQzEJfLFoepyLVY2Bzl7R
	7YmHW2iZw7LNybLJKGdOll2uPPkEzVZeO3+sMhrIlpvs=
X-Received: by 2002:a05:6a00:4c9b:b0:7e8:3fcb:9b05 with SMTP id d2e1a72fcca58-82392118166mr13260151b3a.27.1770015985455;
        Sun, 01 Feb 2026 23:06:25 -0800 (PST)
X-Received: by 2002:a05:6a00:4c9b:b0:7e8:3fcb:9b05 with SMTP id d2e1a72fcca58-82392118166mr13260132b3a.27.1770015984988;
        Sun, 01 Feb 2026 23:06:24 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c54fcasm16265727b3a.66.2026.02.01.23.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:06:24 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH 0/3] Enable QoS configuration on QCS615
Date: Mon,  2 Feb 2026 12:35:31 +0530
Message-ID: <20260202070534.1281652-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=69804cf2 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=fIl7fISSXmXrEScvsbQA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: IbKhGMgBayLf3EJe3br-RpGy_QPHJPfH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MCBTYWx0ZWRfX1daL7s4XbnID
 GjF0GafafwCWev3sTRnjfAnYeuSGCak2dUc3szlIIvRxwnHK5kcXAbkBM5RI6GLhXA71p7p+XHO
 SMPFRD5X0GRoUAmm7zuHTsR6kyDraILq8fv7/Sx7quoAABpVN5NXEI8OoaOCUKmdbwaeJ3jTd0n
 8gcntL6vwNCaPRF32eJFnp9y0TreXkHeON6N3dXM+vHR8AgX5y8IJipYyVMs9D5d9uSQnd8DCj+
 lidPYT0RrD/8udgG8d/wmFbI4DGwWMqXeD5Yyu7IM3tBkjiOcMRx7RLqFctyzm3DNmGInrXSGmo
 e8neO6aqWvavkTUC+SDsCxB0k1FLNlw5yxiuh8YBtDEovA5tqyymW6o319RwO9Dl7mExJAaeFdu
 grCT8N0JGRtsPqrBL5xHWYsGdIHE8caHhPvOPYu6FFnMqgKH62F8fNxW3tm5Y6Ij1NXBs7/6stk
 MlPzhRxSsR6LBL4QAfw==
X-Proofpoint-ORIG-GUID: IbKhGMgBayLf3EJe3br-RpGy_QPHJPfH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020060
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261665-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B76B6C90F6
X-Rspamd-Action: no action

This series enables QoS configuration for QNOC type device which
can be found on QCS615 platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip). 
The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Odelu Kukatla (3):
  dt-bindings: interconnect: qcom,qcs615-rpmh: add clocks property to
    enable QoS
  interconnect: qcom: qcs615: enable QoS configuration
  arm64: dts: qcom: talos: Add clocks for QoS configuration

 .../interconnect/qcom,qcs615-rpmh.yaml        |  44 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   3 +
 drivers/interconnect/qcom/qcs615.c            | 247 ++++++++++++++++++
 3 files changed, 294 insertions(+)

-- 
2.43.0


