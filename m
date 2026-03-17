Return-Path: <devicetree+bounces-276487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHJ7CDX/uGnpmwEAu9opvQ
	(envelope-from <devicetree+bounces-276487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:13:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5A32A4A45
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94432302D0B9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA993876C6;
	Tue, 17 Mar 2026 07:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JsKWoIfy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WxrhjO6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D953876BE
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773731612; cv=none; b=PghmdLBi/ZtlRbGwgaONCrct3LjBS0f0knXKY3wSWZqzIps+JdTUC838DC2ieNBFvy4zQOSPZTpDLQIxSYNGsleKwzkYln6iesDG5biuK1EQAa/CfOO2m0yUzPSiHUAtGjJRTaJq7uCmY/wrgKWktpG85krSU1QibEGboo/d7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773731612; c=relaxed/simple;
	bh=NaBGtM8UhUW/KNbEDu8GNMWOcshBLnrQ4JGGVJDYpoI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fCw7UWQMB6teIMfvkMbIdlD5GtgXX3q5eBCaZHEaXE343TNUc0dJSwYaHH+AQUXARyn+wlz/a0CqeyS44bSx0nE6BlH1PB7ZEQtVWQWkh1z2ypXRwsc+GYw5jh1VNVSoComHPyaNEN/VMqqkwdmxy+Eg7z2Qo+oTGfoLeeONOmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JsKWoIfy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WxrhjO6v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GMfTcR2375005
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=em01N4mmRB5sKowyoNAik7sLPqHDR2HjvdO
	4vhrrRtg=; b=JsKWoIfyfAjJmKvLhTS9GG1JgH7lL22mawQGQbihwa6F28Aejod
	75CglexQPKAEVrqzbcx1OvQmB3Ut19sF3Royv8qrBo5kL3tB33JvjrMgJ4fHDH2o
	Ol0vrZFkdqnyr7vsFmU0K6CwmUofUEM8xkLppMhD+DeKNKEneNLSLknkOpu1VKET
	0/eivGHrFXedVe9KpdQz5PdDlfLuMICtp0CCfvVDM61jtL37Oy4q7l+dMmIFv+60
	sWvPwIGv9l96pz6VOXKUxQevGe+RETYRXP79lTFtAptSpeK0MJcbU0ArZU6WlsGj
	lqt+SSRzgXLZZOIKtV+E6dW7A/yfGbdwU3A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkby32bn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:13:29 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358e425c261so6431944a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773731608; x=1774336408; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=em01N4mmRB5sKowyoNAik7sLPqHDR2HjvdO4vhrrRtg=;
        b=WxrhjO6vWTO1YdXvhgKdJ01a1T3EEJDTg2Awmssiqpp7Jyk0oQXcqzD4mYk657QbNP
         j7X8I2c9CQfcT3/dZQ/1IFGexSPc44ujXDqoTxr/FGlxbNtj/AwH0frrfkU++eAC2KF1
         3x9FusA8Nby+ScAxWtPpN4+HY6sPpPVn3kRRJxazz2T3EtQ6Lx/yHlV95mJ0U2NoaLM0
         ncK/0jnSJMXX9DgN9NREs8KfCMkNnWytZiXyCZpGqY14YBm5qDnoEWy3hu49Yy1l+5I9
         A0ENoYBh4QvDeGH743n2Yigm/YdnxZVGi0fj2oVr8V8pQPXdTFy20nMX3TPqQ1R1qDLp
         5skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773731608; x=1774336408;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=em01N4mmRB5sKowyoNAik7sLPqHDR2HjvdO4vhrrRtg=;
        b=n45fGde5VA22Wsqnw2s8M3nBre1O1bbCPYx9uc9xvpjTrXpl8SAsyXnpOOZq9Xsmiq
         SYiNQS3HpND7sq/Cjz20V9GXSn/VXQV/0Ua9sm6ZiwAB9OQN0LYa5eUK4nj2COIWrYk7
         Ni8py7YiYUQE5U6kTUgTr45tKnuqJtmMm+cAL+1qEZujr43V/CpzjX6EngRam/HPzJmU
         FkmyEMthTyVNCN09O1ErUgqSvcnoFhr6YCBXoWHPuuaX3/7BCbOqlUvm2dPQ3RlyC3pd
         6s+JJo3nzESwLYYbZLjLD3CIyLb8+pMebpY5Y/rpEq7wm8JHWPSy9BqWZ4IJvQ38BXwD
         n+FA==
X-Forwarded-Encrypted: i=1; AJvYcCWZhGFRyHxslhyRJz677gHA9YOauHfSdKPae0QcYCMoADTMmfQL8ODgS6ZXpZQD2Pvo5ni+G/siq6l1@vger.kernel.org
X-Gm-Message-State: AOJu0YyO0gPYE4XM5pdBFBHZQW5zs7KEQH02zluvxet6H8fXLyeXBeqT
	lXS/lVXW0kjjR/+ATV4fjmGjYUrXHi8LYY3a5nbusyuZMDQHXuJb2YqXfw/WU4n/MnEwyN9eLm0
	8FiYqYecX/dt/PKq4b4ZGZJ4IqQb3AUzmbg3enrzGj01/vnlD1VE6u0roR5vYQbMe
X-Gm-Gg: ATEYQzwbos34bPU28KIuRkZ7vkIOYsxpocWBTMNyZRd4+RhzoTJbmsG000R9/Kkny/l
	L8eom5uAkPffrOPOKW+1kMjAnO3ImRnuSj+39FNvRXK9lctMMDoOI+eaVHGxwnV5ag9dNYXaW9h
	5/BbSWqXdvCtQV3Bxov4HQm6y83f7pfpk6Wx6ATJJxIi16lDlJYy2RwIUQCYwZ9m/E3pfCrbWz8
	TENns+qiYXtBbtg5SNP2A1p/R7pPd6OZW9hZHWj0Ko/zzV/e1fHndRY7cXSSAKq6QYNyUIRA5TY
	Zy4dU4mPP6m1du2tRVpza7UP4NQBByRwdvvOB6zRK3nIEE1NC9duIDbpuG33heNINShyliW0LRr
	/WDQESSR3gRzCEQwuymR5QeAdXMZHwbtwce5P4synFonX+k8yqSt90ETdy7BQMLmK
X-Received: by 2002:a17:90b:1dc7:b0:359:855f:ff96 with SMTP id 98e67ed59e1d1-35a21fbebbemr14056874a91.17.1773731608368;
        Tue, 17 Mar 2026 00:13:28 -0700 (PDT)
X-Received: by 2002:a17:90b:1dc7:b0:359:855f:ff96 with SMTP id 98e67ed59e1d1-35a21fbebbemr14056846a91.17.1773731607869;
        Tue, 17 Mar 2026 00:13:27 -0700 (PDT)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9d6fe68asm2563184a91.6.2026.03.17.00.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 00:13:27 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH 0/1] Enable UFS for purwa-iot-evk
Date: Tue, 17 Mar 2026 12:43:10 +0530
Message-Id: <20260317071311.1696361-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oSnANJL8TeBqN8WFcrhyE-F-W2PUgG_J
X-Proofpoint-ORIG-GUID: oSnANJL8TeBqN8WFcrhyE-F-W2PUgG_J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA2MSBTYWx0ZWRfXzuzIUt7wKUor
 9bC7ipQrnQ0said6PRbrqNmxfg4dhDfD1JdpY7x12aXkmfKG2pw/sHnxKXi3IERZ7JmRoi+e8QZ
 P2TkNO7FZ/dtfP1OF/MARSeBQCAuQEwTZdYWcVIiWaBxNkiBX7dUH/DAwbJi1XjN1yW/g3+akhd
 TzBQwpnhSfBKkrtH+nqcHwST7nSfkO8depWfvt2XGXMQ9YNkh4mpNlHSzYAJCbHZKsQB1m+7jKT
 ZrEAEBVVTcJ2SgN891TyncpkpgSZaK4qPtGJzym+IuvH5lWJhvGqdkKGATojkETLPuFC0L0S/ef
 dztCif4hkFj1VDl7bfgsRqKyeLDgmgsh7EHtDmmWKiI7TZbY7Q1IVd5xtaIF7QMCgQ1tfFr8+cm
 FQ9+Wq3ENvfES+Fch1bMvq4GYkKYSFiVCctjUtY4qI8Cq9Xx2kTwG4+RZVIDmYEVOdChHecBeE6
 qjB2GOMK/APNFS/YfAA==
X-Authority-Analysis: v=2.4 cv=ZpLg6t7G c=1 sm=1 tr=0 ts=69b8ff19 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=gTvuN3wP4q4l7ERkiOgA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170061
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
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276487-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pradeep.pragallapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BE5A32A4A45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable UFS for PURWA-IOT-EVK board.

This patch depends on [PATCH V5 2/3] arm64: dts: qcom: hamoa: Add UFS
nodes for x1e80100 SoC
https://lore.kernel.org/all/20260211132926.3716716-3-pradeep.pragallapati@oss.qualcomm.com/

Pradeep P V K (1):
  arm64: dts: qcom: purwa-iot-evk: Enable UFS

 arch/arm64/boot/dts/qcom/purwa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

-- 
2.34.1


