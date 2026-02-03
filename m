Return-Path: <devicetree+bounces-262065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C2cKAeRgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:09:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958ED5083
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:09:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 216C930767C3
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE25F376BE5;
	Tue,  3 Feb 2026 06:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ogpSHxpp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TAqe4QPo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA86D36C597
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098806; cv=none; b=jbo7CljAArm7oK8lRCmbpZA1HnwW3pLg5dwCpWCCyAqNqFbL1pAhPHukEghyw3YmkpqkunaPGjadZ+1BsECNFGSMUcxILcD1Otj9Re31qZCVv1iIvC9QsD7T5KfdirqIqoyKR6Ak/OZVgT4nnGDi9KF21gMjDwU9bRZmlZg/ifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098806; c=relaxed/simple;
	bh=/56D0CBGwVyzeNr/bKvd/5zvHjkPfwvMBgCgHjYmYlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ssNtC+z+MFK4dJPqwdwz5IuaNVd/kCbHk+NNg4YbF+2iMB3hYF2xw+bDnqhZ+UNxUZFUC7lXyiqhhohjHZiTr8VhD0oVf/UlqKLMHzpfYORmLOpC8Y1/QOuRMZn+f5kwifofpwgwLZf4ZPZ3V8DkLw3o5m9sYcfJP7bOUoH5zn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ogpSHxpp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TAqe4QPo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132ikCo3386926
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+I6n1aQfdZpG3e9vc8tgl2rq3FMFAVrgKKxvf8UPFxs=; b=ogpSHxppcRboH1p3
	44mu7s+tbl7louDu9EzA9vL60mT+81ew/YSNvL6K3SWrR1uHiCMVbjHT9RUJ/58m
	WWt2iEBAha8bhStIHBcH8rpyMUrkXXaG4VYpvmAi0IN+m0D9wqYrhVHmfu/hh60O
	OC+z9jy/sabSjSN0QVpZK4pgpnBC1moLG9+V4Jau3FTldv2Pca+4ErtBO6BjMLRI
	eTt81nWwp1ENO9TmvY56sa/dq+cN0OCR1dx+1DD40mnS6/pLkwVfWGpWsNMPFZw5
	XX+KQVZNHp+IyGyvFb/miC+NpSSloWyzavxX0aEFsQ0TiJ0Thw+3AiLGf/woYp9q
	zWpqOQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbt9hp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:43 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b715b26fc3so7163311eec.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098802; x=1770703602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+I6n1aQfdZpG3e9vc8tgl2rq3FMFAVrgKKxvf8UPFxs=;
        b=TAqe4QPoVhDsh/c9t9rMZoumLUunT2TtorUJUagzyPCboCXb+dmFNBtHcWb7kZjoiB
         UBsWH/ByTKns9WCeN/GpG1SeeSB0gPKJ5EvQGI5bgBpMjnHCi6vKpNgw50PNLrsM3G82
         R4JH/5YRcj4oqnqDcJbeea5ydZnWwaKYq5/O3RrKooyWghh0IncObVi/K4G1IYgONXrY
         10HsiTLUKyrcNFHm0JTzBxzwRSeoIi6oM6zWU7Xo3m4oQG2zarenDtoNNpyg8qZzrzZe
         l7mf228UZftsLuxT4zP/JbUfToNa/rl+nVggu2kMirG4Qh8hTWZLTExy7PJBbGbVxctl
         CyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098802; x=1770703602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+I6n1aQfdZpG3e9vc8tgl2rq3FMFAVrgKKxvf8UPFxs=;
        b=megOW+yDrPYIe22O6buBb+9uuj8Y7jJcN3u0KHY8uipLcZcGrBx7rN/ZxCkzAJ2GaB
         EXyZXn88G7SUcbOAVu3TRmN9DvDq7WfOgGvOMCciLfIXQEh169K+k5ydVwhtKSNh7wPT
         70OAoI2+wkq8OrMqlaCTrer5xf77/8nhbqan9gVcGQAZDvCKyvgGQJDxqWsNKP8HotdS
         IT4CvTfewW0d/NDcTameyfl6ALIex4mTZ/JhEGrgZUS17qzYUyhILH5b7tOFlkrsJUJB
         090GnswYOynlu1OVHmLia2b1vGhE5a3PypWGKYnfYqnRXlSfqqUABnTaDgH3b6ACvE7X
         xjqA==
X-Forwarded-Encrypted: i=1; AJvYcCUT+VmuImLUOstPiT7ImwdpByV496P/JLFpasbatMoVFqS35+45KwuWceqQULWV+SGgv6CoZ//n2g86@vger.kernel.org
X-Gm-Message-State: AOJu0YwF7fFh/9o2/OxLQU+NmJgMmsOot1Pg3SgTAwVguFt9hXFelVx+
	AfileHWNQywMncusnk8R8dwu0/5Y1Y9R7D2tUIlohQyc7Kfzj0keLSWz2BhllS+929Hm3xhbisH
	uyBxwS4Tn1v6P3G40zmmB1J4ydfxXgrrOzYMflmQgD0wpVCO1RXEII0N29FiqmRIw
X-Gm-Gg: AZuq6aKy/r6HiQCuVA+aWrCRx+w797WTFJUO1zc6n8bDXYWgJ3eeR3i937rrT9UUC61
	iWnwT8/GuG4VrgXhgOv/8v5rddkUZRecWtyNITVEANBT5HrVnV6kf5qtmx6Tjvoh2FkcRzprbMy
	VSjm8JksGT4EKulIVEt/B/En3T2rLx+j3MfIqXUGRXAOPxW0uhV8KiIXJUT53VewBLgejGIkVsx
	biHfF6XOvImjoLelCuOpOHluqweE4WRZ7pLnmDDRA1CKUUe9Un1cCQsFPj4Rs6h8hzM6cF0mwJr
	f9239TAuhjA7f6+BYdeFBX27Lnhb0yd+L4nExiyWTdNMwgtYxmKCHJVJaIB6fvU9w3h8PK37EBe
	UBSO1a1Yt6ZuoLy68WMt3u3XogCpefeYeK7S6Oo9Rgwu4rzE0O96OR09VzrrC
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c59 with SMTP id 5a478bee46e88-2b7c8663d85mr6318603eec.17.1770098802306;
        Mon, 02 Feb 2026 22:06:42 -0800 (PST)
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c59 with SMTP id 5a478bee46e88-2b7c8663d85mr6318583eec.17.1770098801788;
        Mon, 02 Feb 2026 22:06:41 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:41 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:27 -0800
Subject: [PATCH v5 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-10-02de82bf9901@oss.qualcomm.com>
References: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
In-Reply-To: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=1047;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=tdjvmMctoKSa6ra2CfAphD+EWBiS7JJc2hxS6t6vhwc=;
 b=JheejFkD3mceZ7NU38xOjx8wGTxrzR7BS8z7gL0za/FYTgjOzxP5RqZCwbfUvp+WtE3LRoZIr
 dYA3n5kPp++Cw1lMOiJv3ryqDfWfwb6DY/n045KlgwVLB6KMauwdnEE
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: kpZWi4paKTFet_A8qJPFSwJzC57x3XNU
X-Proofpoint-ORIG-GUID: kpZWi4paKTFet_A8qJPFSwJzC57x3XNU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX57cnZkPU4/hZ
 rhUG01Paxll/J6TLU4M7noonznc7ogrdD+UNdbLzOnLdI8PRLv/aBc/cM4uaij5SoXuGSbsVT6t
 KIoFAYuSNqqA4vNYHkbxb1Dnn7zR30ggxumAEOGauRhEPUY8l8036QRolSxm3CFufbjwLzmf7md
 QMpx8P3SXBTTPoXQ1xFAxhm4X8YtKVMv0C72SeoPdZWrMW+oAkyaBCT2aS1N6qYHtJgx+yJRidd
 XWZin7rBMaImMmKTDoHsd8xe4/jC2NbTcONLDGLUceUNfF2nQKgZkv8haheND3LLLDGE4Mo4NaE
 MvWhvCrJP9bGhkseWI4bQe/iNp4/41mbIKeH6sCs7OeqzRHK/BMHwhc19yJ2vYHeyUiYSEMRjkz
 ocGBoH05SffCBGQJF01yYAOv11XfpEFHg96rE0BEkLnaV0f/0UxGy0vSMjWzfRwixwKvwm7eVRo
 KRGxYxs6WTKll8x3xXQ==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=69819073 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hvWDQT85v1CTPbyC7zMA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-262065-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2958ED5083
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Enable the Kaanapali display, video, camera and gpu clock controller
for their respective functionalities on the Qualcomm Kaanapali QRD and
MTP boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d383..66ba440d0123 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1454,8 +1454,12 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_KAANAPALI_CAMCC=m
+CONFIG_CLK_KAANAPALI_DISPCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
+CONFIG_CLK_KAANAPALI_GPUCC=m
 CONFIG_CLK_KAANAPALI_TCSRCC=m
+CONFIG_CLK_KAANAPALI_VIDEOCC=m
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y

-- 
2.25.1


