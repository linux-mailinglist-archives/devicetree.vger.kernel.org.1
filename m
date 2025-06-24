Return-Path: <devicetree+bounces-189208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A40FAE728C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2083117EB1E
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2EB25C704;
	Tue, 24 Jun 2025 22:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UpsLtGOp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C4825BEE5
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805611; cv=none; b=Uqmq0+dWmSEA8S8x4/v6IkVtBy2ou18JiF1f/MTUaQM9RMEmKwQ9t1Eqtnto1/MQEsEutapEC3QoKVoo9uVLq9leP5SXNJT47tCc5OCBK6Xfs4Mfua0H9zlc5mgXePILhqC7F8GZkaZmOmisVJIFZSCH1V85sHuVC19uJ3C31wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805611; c=relaxed/simple;
	bh=t/rZg2mXoS35Z6g/Fc1ahHAw8Dong0aRc6LecgnXaBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N/s5v3Y2wkeoN8k8A6Eaxi3Tp0IER56YtoD7DsphMCn8U7JY5O1qHWVERgl/3DXmfM6QMYzWUQyPeExaf911rs+bL8uTqAsSi1adqNgwhNZuDfJgrzXMfQzTLRgoHbR+amdWrwhTvc+diOfWWr85NvQEYsF4SyqZ/piNE+JaquM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UpsLtGOp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OGOkOo017607
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/47YVhRJHDkRQwljfohl4e6sBDrvrN8mrp2H+cyoRUY=; b=UpsLtGOphCfC/MZK
	CdD1TgsjzeHahCrZkUMFA/+NMhTfGkS+ZkCXATYs9GWw6WcH3wQm3enIdAqN6LM4
	KiM9gnqtHPvtr9nUi0N4rE/96Uok3wGV1xpZi7Z+EcMiOlJ1m3/r+TzDLHad4spm
	rICWHPEMsyNebWaBTRhi9ltzHhFRy1v58gnPoSopwHCuA8Pf6G8Gq/RqEiC0rjGD
	3wuaSZYs0ecMewsY2hEMLwtX88QLIAuUZaPH82UpcAMr0isD5j1rxmmPSGHi7/uV
	6Wxk37sQGvq2vx5zhnVRzGI70YWMRVArA9ujlY3Rbx7dZYR2DJ7BA7m8q48uJ08+
	3ytqSA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5pww1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a71914dd25so137127791cf.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:53:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805607; x=1751410407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/47YVhRJHDkRQwljfohl4e6sBDrvrN8mrp2H+cyoRUY=;
        b=VCamPI6wNKw2oZFgdASODeB6XnlHRIOOWV5kuL74KGdZ2SABPGXaHm2ihp0SG97wDH
         9oZIfMvZ2rtGW1H209cEPmDFUDLnT/43cOW3VEtfR4+1SXRoHksU8pqzTJw7Ti3ozz9z
         merQ6ZFc6JFtTLu6tsh1jTXcNsCR499YWvhJPpMRssU9UNHWBnmuFaWkbTx/WBadHl0c
         7Fpf7U8SVnZZGZtDk9rRAPWNC84fUuELtXTGEaTPspiAWwaQ/zcAKXu4SFXSSVb7gbfj
         i/aNaPl0/QYcoOKkBX81E5tYGk9oWfVbWdqyU8B3G4heBAlMMp1KexlhFG94l6m/fge4
         r+tg==
X-Forwarded-Encrypted: i=1; AJvYcCUOFLpwDVmhnFOdDx6j7Z9B3WUFX0oZ7MAKJflvTetvNEVE09idTMrNobqlsIOx8hxtmap8zbICA+D+@vger.kernel.org
X-Gm-Message-State: AOJu0YxUT0Vm1bjCvRoam9mXxNfz0jPbgHpPG5c133n1V/Sn/9T7Sdye
	lWhhw1e1wkfJzxkwLIp9UYjkAKBmCpO4Ahio4Z9ox1sGCndyv1h5cT3D8YoOpsnlUam9/mR4N3L
	XUQID+mBO34m1Vthxrv4IWr69zxuZ6s1LwuOEuQlSfZATChrd168jGuIO4DlYyIfR
X-Gm-Gg: ASbGncs+Dd4gcyFqa2gpU9q5cFBqUOwB9a2BY/Wi0JTJopgaViCOBM7dNKSoKjEbak3
	US/kQMQQoEuw9UpL6Sv/8AgL9GAfapDloyrJEa/A+E+Sjne2LEoTgkK1YTX+7vam69IF+IwlHRQ
	N+TcGIBXqjwjhMmIhp10evrqeO6z9T1qGASTH7XRd9BDr2WghtL4maOVDqJfyZBDiGtwri/tP2M
	Q2c1TfLlpKrmkXzRI9QiTfFJUSfYtTj/lBDCxVKhl2AFVtRZ/zN9YpLiYTd1luVTftWS/gZgXXR
	syG7yL/kIMdkeUfLhXls/nqccbFvEhgOycw5xyslwwIdRYmwp8d8xz/jQ0AOz+wuNh610Lbpd9h
	nRII7ryb77hblASeDj5Vc0j3Gl+jLPbYRwfM=
X-Received: by 2002:a05:620a:2815:b0:7d4:6f:a3f3 with SMTP id af79cd13be357-7d42974bbd3mr120817685a.44.1750805606655;
        Tue, 24 Jun 2025 15:53:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG94M3DQjJxjlOh+Wa7ZVDN2Ra0eLm5I+n3Okv+Uk1a/lJierkVbRDFtP5lW0t+YOyOA7SF3A==
X-Received: by 2002:a05:620a:2815:b0:7d4:6f:a3f3 with SMTP id af79cd13be357-7d42974bbd3mr120814485a.44.1750805606292;
        Tue, 24 Jun 2025 15:53:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f5980bsm17843851fa.7.2025.06.24.15.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 15:53:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 01:53:20 +0300
Subject: [PATCH v4 1/8] efi: efivars: don't crash in
 efivar_set_variable{,_locked} in r/o case
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-more-qseecom-v4-1-aacca9306cee@oss.qualcomm.com>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
In-Reply-To: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1258;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=t/rZg2mXoS35Z6g/Fc1ahHAw8Dong0aRc6LecgnXaBA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoWyxivcQKN9slXayTHROefKCDktNqjipS1qirs
 xkySAckA9+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFssYgAKCRCLPIo+Aiko
 1S5PCACYyB2xDS0iQyM+NvelIhDHfQwbdUlUaEjQVCCSve1uwzQm/XLjA3raAXOL+c0KmJtILQI
 rEOrfxnDr9JDHnVkBtOpy0n3O8UAmA7jXvjl6uC0eFJJaSmChTl+tIOc+2U3qKHv2YgtPIjB60G
 GpTQdxl/X27iK9dHsROC0Xs44R05PsOlrsnqZGynae9K/yHc/P11ES21H+crbemKyW94PS+AyI0
 IIfUaLZrbZVe2OWBk5OAv37znQIV02F63t43l2cx7u225Ra3V5W6E2QlvGYcEcVcBLpXUxDU5/S
 66JuoPiykkS2Vynu1gZ8bY55D1WC0SItw8fZdmAaaAktc2ae
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: wpOB-nJBH8Ao__6QDda6iJsoQbS9jBbW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MiBTYWx0ZWRfXy+wiRAUNZY5x
 grdatdrEXg/8nVPzQKCgqMEunwq7hD3A5p3m6I/EnLI9+Q1299UwZbYWZAI4G2qt1RzIFTk5t6d
 puWILVJPAxA9bKJ+anVUTQTPoZ20PbpHPsoDRT9l3I3bmWktdaYDw7foNs4b1sEx/Pn7ubPYfCc
 +zjBqVrLvddFZFBc3TnRev3rhAfx7k/qOUB/SWHmRoriMbsTnvNVkxXMWsqFL0MkUh83ShR1gZT
 hlK0pFwiGEh+goPFPRp7kFGCcFr80Hxsi92gYwUTkBZ3UpRbShVGCumojctOrUtttRaSh8T1hQn
 xipcMThdrYVkhX82N+IoGErBc7efkC1ce1mLh87n8Z1JVLciDZyoauugKu/y8dpBqYd8wnDpxwN
 wkGQ8tzr4tpB7H1odCujWcMpzelp3r0o6MHS7LFAWJtdByVRrH86NXtusu7c4B5Sbio7gc/Q
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685b2c68 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8 a=EUspDBNiAAAA:8
 a=2-Wz6HayXEhRivmEhXsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-ORIG-GUID: wpOB-nJBH8Ao__6QDda6iJsoQbS9jBbW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240182

If efivar implementation doesn't provide write support, then calling
efivar_set_variable() (e.g. when PM8xxx RTC driver tries to update the
RTC offset) will crash the system. Prevent that by checking that
set_variable callback is actually provided and fail with an
EFI_WRITE_PROTECTED if it is not.

Fixes: 472831d4c4b2 ("efi: vars: Add thin wrapper around EFI get/set variable interface")
Reported-by: Johan Hovold <johan@kernel.org>
Closes: https://lore.kernel.org/r/aFlps9iUcD42vN4w@hovoldconsulting.com
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/firmware/efi/vars.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/vars.c b/drivers/firmware/efi/vars.c
index 3700e98697676d8e6f04f061f447391503f9abba..11c5f785c09364f61642d82416822cb2e1a027fd 100644
--- a/drivers/firmware/efi/vars.c
+++ b/drivers/firmware/efi/vars.c
@@ -227,6 +227,8 @@ efi_status_t efivar_set_variable_locked(efi_char16_t *name, efi_guid_t *vendor,
 	setvar = __efivars->ops->set_variable_nonblocking;
 	if (!setvar || !nonblocking)
 		 setvar = __efivars->ops->set_variable;
+	if (!setvar)
+		return EFI_WRITE_PROTECTED;
 
 	return setvar(name, vendor, attr, data_size, data);
 }

-- 
2.39.5


