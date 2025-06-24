Return-Path: <devicetree+bounces-188801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D55FAE5994
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 04:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79C643B30AA
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 02:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7946204C36;
	Tue, 24 Jun 2025 02:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kfm+e0gX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D11F4629
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750731245; cv=none; b=JIOw+TQWrbYwKG8HR0DOqivBFY55QXFF4BEIi7NNbQMmDBLkr4aWZIAMLiWc8Hoz/lJfWKZsAKOm4yFJa0Qt5U6LaMiS8VVV/xoK3RW0ifYX3/EpMWQNINksexfHamQNDywK0eCuFLeMtpWbPGNoPPBDNDAjE6UjCrLIDD5gVzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750731245; c=relaxed/simple;
	bh=t/rZg2mXoS35Z6g/Fc1ahHAw8Dong0aRc6LecgnXaBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQHPSLjE5WcfWZskHJQl14kmxCjbZ3hsFP32ADmhk3iEu1wbzn1sUeVcA+JBczGzXvHfG0Vl2KMijlcmEhRQqpTc0V511ysAwVyOtbQMd22oZ/nczvwq7na1rKf8hFTSC5SCBE5YRhE8ev+mbl5mBuGDC2NYugTLmsN0XOTReZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kfm+e0gX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NHkdus032752
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/47YVhRJHDkRQwljfohl4e6sBDrvrN8mrp2H+cyoRUY=; b=Kfm+e0gXMOYuSCQi
	fd7M/lRqEXF8FgVp9C2C9Md0QYX/QC/oUtjvF472QtHC3hanXoUUFxywffpbwxF/
	c9W75VjZVyOVhi9t5RcWwAEpoxUmRaqghmOzRSm8CtFSg9hfkSST3TJFBFoKZ/5Q
	v84SBpLX67FbZHvcRwhQMYXTN0MXLFyGeZ34PMgJY3DGNE7xZirGvxNSQQ2Fn8fZ
	/CRpkV96QQtKDPBrpIPBrcoJNHkmCFiP3fX7B6lrgwCSgsqzGlvQI/TCEJQGJSUm
	3y+d/1fcv+e8Rk7JmfO/cqMdk97kGnerTB7EwQ3r9RQUhCqSVgakgzJZCeC2IOhC
	mTD/3Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1ryx8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:14:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5e2872e57so745951385a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:14:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750731242; x=1751336042;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/47YVhRJHDkRQwljfohl4e6sBDrvrN8mrp2H+cyoRUY=;
        b=reaD3QZyJvm13el2gQmkuRwOziqwBvHrNxvsCYGG/TV1nLJj3kISwlZc84u1P0txxq
         UkANxMEz5fMtlDReff0zv7YP7z39v+zFCQYvPa1fZt//wTjG4UcN8qq2QdUsnTR8pOEO
         wkHByAZsn5OD/bqu6agIu52JBtqPm6J48+Mml/+Xobb8HLoed9ickR2941OIfRpvYlP8
         q65kefKZCky239SVf3c3PpuYS4J7jlSk2CmeYn9be90nOO6JkCWT8bYZ53+EP0cHK1uP
         PB6WkMQ4QfBEygw/eIrQplnKIAjGQo7Wg2xXRmgZttGF5IwWawWkp8B5uvakK+jJeeV1
         ML3A==
X-Forwarded-Encrypted: i=1; AJvYcCUrmI0X/RBuISaUxNfQOtfCoIXWOGo0761I8gm7DxOSm6hRno7QXVfsEYnpIXYpBPSLymbXSmCE9qoc@vger.kernel.org
X-Gm-Message-State: AOJu0YwpTKWwPXXMJBsJgeaeZ6UcJNbgU87ewnSZH+2G7rTCCmm/YJbL
	cQph7iri4Izcuno7+E1nhpLrYPX26B9pLEkstISP2+RKa9V7quHX/m4XGosRLdq/LylJs5OOmOo
	QTEbvK9Qhc96x18rit/lXacGjGQEq8DK+EOzaa+QyhQGO53b61ZBoIf9ZjGXO72n/
X-Gm-Gg: ASbGnct1+0Unnq8dviCaoJSCSUoEantjzULtWpjO5btzxk3Q50uI64L3IBWI6nrbc7X
	EEKMKWWGSlmhiM2Eqr2JRnUGThvy73caxvHtSOptSdxI7Poz5Cg7qt12vRsIWEs7cTzrSB6qofG
	Pkuajw1NiUHCBn3ww1pfO6EDZmXYz+bvq+ECl6mzH54/vnTvmIvO/kbvvCKCGrBItQDPbfg5HHT
	AwoIiNSbamZqyDU6L6s7Rs2vrtxQoFF/Ql4dWUKE/L1yJiAzF17idX6+H62r2DtDRKG388P0uSP
	J9ZuT1IJI+rBRhsdjATVGPBu19ZBzGfAI0tkOKiAR69/aqcyoT7Pp0ZMrELT1sjYfz4jRg+w+bk
	GaH5UDsA7ollSdEx1/eqOisBhPbmJn/UB6MY=
X-Received: by 2002:a05:620a:4246:b0:7d3:dbed:869b with SMTP id af79cd13be357-7d3f994985fmr1943750885a.42.1750731242100;
        Mon, 23 Jun 2025 19:14:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqNvGeq31ZsFPXIO/lQgxlb0Vn2tpiIlaT+TQgY4zyabgD3bBEA+zw9lFvTIbJzIJ89IyVKQ==
X-Received: by 2002:a05:620a:4246:b0:7d3:dbed:869b with SMTP id af79cd13be357-7d3f994985fmr1943748385a.42.1750731241667;
        Mon, 23 Jun 2025 19:14:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41446e2sm1637764e87.32.2025.06.23.19.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 19:14:00 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 05:13:52 +0300
Subject: [PATCH v3 1/8] efi: efivars: don't crash in
 efivar_set_variable{,_locked} in r/o case
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-more-qseecom-v3-1-95205cd88cc2@oss.qualcomm.com>
References: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
In-Reply-To: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
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
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoWgnlIwD1YOHrg11CPLxY9aW5PbRmv4EaxnsBp
 jEGag+qTSOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFoJ5QAKCRCLPIo+Aiko
 1a8uB/4pt+r79WsfEV7XaHTaHhmQdEWSg55qYh+hYrZtxbNHOACrQMrGLGjC0vOndbSWD5TXR5T
 dP+t2VrJNBLG6p6om4m8idOSq9Uv3Ga79iLTOaKPch4veQwUF4PnciRKG8f4ngPBdJjfD1PzNvg
 VO2EWAQjCbBXiH53lt5Os660fgYfzZa6zDZCXOMQrhIcJq9c9GQ/mHAaCGBleWRILQCWuGcth9B
 cgEC+cVA55MGnOMYZpbE2iOzaO0mNgw1c9lH+8Q6W/bfRPO5RO/+YxPXXoKVQWSCJ08RGIURNxx
 I7rwPZkkwKOL+6wgbNKyoAk+tMmx9v3OEPrkiiuNDvDxd3xW
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685a09eb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8 a=EUspDBNiAAAA:8
 a=2-Wz6HayXEhRivmEhXsA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-GUID: m-rkdqp9OYFmc9Z-e8DTn2cuZWeE_Kx4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAxNyBTYWx0ZWRfX6Wlkerq1vYcp
 AcY0kPjH3n6/iVhofruSnq9jqfKznGn5xpWBPInbJrUxNbCB4IT7r9nXUgJxFFdu4ugIt0UJTal
 gwt+nQoAdZ0xa0xwQSg1Mjcz8hmLqkTv/Z0XKMLTM1mizJsr4jmh3mIqgWsUJf37eQK/Sg+5vop
 F+7ENa1jJN1DqoaXk4ErMi6MENEvnX+UGdLmzrSLx3eKyd242w+z23bO7MV2WeD+WI3JXsqzaQR
 kFIUlpoiMWUyA65M69f/wyHlW/a8DIvvScaTiZljUX8TEwOf1E347KhFAnEyrOiBLdnWD37Wljs
 LIYDqun1EOnBiA8Vkhe5a8oJhHF4m1ThVCGHIEKfwHHuNrW+E/plU+YyYPg8rgfrxMfjorNyITJ
 0efcoo5+DbJWqZtihUJPxkjPDe+vQuMKbGtwbrOq4OJLNypeTy33IYvqHXZZyF+xNOiR63Ql
X-Proofpoint-ORIG-GUID: m-rkdqp9OYFmc9Z-e8DTn2cuZWeE_Kx4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240017

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


