Return-Path: <devicetree+bounces-220604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7D0B98281
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 05:54:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C17294A529E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 03:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353EB224234;
	Wed, 24 Sep 2025 03:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GkJJsX9K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B172E1F91D6
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758686060; cv=none; b=uFpMtgxdbmBEM5gWpUnceui4+ZZundsw39owXOQtf3qOnCgFA5csql1yDv+rJ4VITgeCvwaUjYTQ6i+ZqiV6HIQ46t+E9mz1AX/NhCjQAX7SQL/CCsB90KYHyaocTF76O0dyGZ89Lo8I5yiCNFW8xZRT5QChuoM4DDpLTlNIdmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758686060; c=relaxed/simple;
	bh=Nu/WF9Ml6c6YsVo7Zy/YIo3B9jWxhA3hMhqvN1Z4F8I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hSJkdHDc2OylKrxfp5rSYFuuKydwYRFFgHbfXZZad4A/mpfM+97fa8c6wtxEtq7FDBZL1H/rKzhwKsa9sCoOigwc88TLlJq3yIpd5IQqc2hhCvd5l+1ngWfX1HettlDbxSIZetePM353v1vOvyfO9uYutgoGV7Q5511nxySS9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GkJJsX9K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O2J5ef021317
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:54:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=j/3ckqBWBGaw/aVVkFjuVsL+rcB/4ID+XJ2
	bnAbFK+U=; b=GkJJsX9KglNWNO6J8FBogG76QndvnPu2ZPwEK7T7Atvou9HAFlF
	Z1tMiFjdgD55nGmKwt3XlZdr+5eqMqa/vi6GqV21WUjh50pDKWxeDSewplCcRCIm
	Jt9uF4rY9L1sEj1PBDa3pjCEVO4XpImDJ3+2GNkC/x0/dr6LeUJBnZAQ/6aBWTVs
	Ej2Y8mzLI5xBxmXoxvlsJaZseXomaiI7ZsTwXcc9SMj4LhD+Ru8UawqixGWSMz2o
	STm94gFt9oPCT14FDcU9bewlnx4OhP3RmIw2cO3O3ReVP19PpgYDDiJnK/C6BzCA
	kKS1ehHWqyFfrspasFlJmYs9oeCNb3pXkKA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjv8q9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:54:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso8616664a91.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 20:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758686057; x=1759290857;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/3ckqBWBGaw/aVVkFjuVsL+rcB/4ID+XJ2bnAbFK+U=;
        b=kKiSDeJ/ZgPNCJo8K5/V1G6Nkrq54yV5irgzbsB1vgKyNPWqK+0SRQ8quUhX6337xH
         4GuU97QXbODQvVlEWdvh9DMiZbrcQipmieuiXbUfrb8Q3ja4qDF2lhtlN1oGiOPDgGVX
         cwUAqXIGq1ARH2p6pTKivaGHmBIegrNi9Ad90GWL4uQlpRx1YBP/vLgwJnMtENzmn4Eb
         N29ygvZwsxqm3jeDSeyNylCleJCRBJ8hZg4kox2tWHOpz7BX28/T/voxNZ98j72oDTSp
         HjLE3XAWefPgawqImEAXfInQprclPgVyiB2T4nF++bRX3/yKhkvv8U+3ViG0lZW3S9eu
         XVeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhXGXhZgoPpSBko4CAfBN4aY6qzxHuBFYz9d+8sJ8ufWK0bgrOHiSUK23aGo4Ku+aYJFcaS1IEQ1dK@vger.kernel.org
X-Gm-Message-State: AOJu0YyTSr0sNqtN03O28m4HnVmfrXUZti1iKvTGtyVXzyal2FRXC+AC
	qXHbTfymWfy91Eo0iLeeMdAYMNzImJtHkVTR/27G1wsYSJceJ1U0Qr45MNuyJjqyhs7gswH6jvt
	7z29zDRYhpoxJBQunGadngFP/bHs/O1muu0tTqX4KBHg/oBQf9vRW48bWABzEGwvAdA1qeFJm
X-Gm-Gg: ASbGncv1qzyJhQfd9Xh4zM27peCVLEjFF6do4fB3PvFa1mXyNib/uDWeGzNI++S0+1q
	YxF1yKJHdp+7fEwTVfos9EDYoqP+iC/TdyFX7+dvAe2LTPPSzvq6dhjbXLqQLmcCIl8TideiLg0
	/rcObBuj/DUeqhLzXiNrEU1FQThBjRjfJysKYxPzOCtbVQ4x0J8xGiYSWFUxxhXLlGL64C/Da/Z
	bp6cnfr9hAZMqmMftNJlFPZQS3b05kfJ+icbSsXki1gvWxPoPHML8XyPTkLzGw2rCs2u8xebvwW
	UJm6lGUqqencAnhbIuuomRL87LkFcPHbK+EZKaMA1MtclBVdPHXU5rXW4o338+ExCUrOm3PCxLL
	/
X-Received: by 2002:a17:90b:3d09:b0:32e:753d:76da with SMTP id 98e67ed59e1d1-332a95e9263mr6031274a91.20.1758686056702;
        Tue, 23 Sep 2025 20:54:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbrko3GJ0QqG1oehM35y/SAlmwzDijJZMdFCaekD3Nn7gzlJ5Px5HbAR+Bh4TzIkGAvo/bDQ==
X-Received: by 2002:a17:90b:3d09:b0:32e:753d:76da with SMTP id 98e67ed59e1d1-332a95e9263mr6031245a91.20.1758686056209;
        Tue, 23 Sep 2025 20:54:16 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bdb4082sm750903a91.14.2025.09.23.20.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 20:54:15 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v1] arm64: dts: qcom: lemans-evk: Add firmware-name to QUPv3 nodes
Date: Wed, 24 Sep 2025 09:24:09 +0530
Message-Id: <20250924035409.3976652-1-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: E8hzVDnfXwj3RWua-PHgbuNHOnoahIGz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXy7SAPer2ILSR
 GrDpVepthBOkXD18TuW5hJPENb1VmvTX1JoY/OlHHg5NEnymkXp9nI/XKOJG7QmovfAotPwRRVg
 IeF3p97qeRn8JnyOMdN+9YALcuETh9w6huCbgLkYjRbhWtre8QfXJ7+Th4qPTYJGby9u426E5hX
 zgyJAwR/5csn+TNbVwOJrkJs0efhrParkdfgKSGryNWRxqWFNu18tIBWvpLtJWRD6/sWaaGPYgA
 4NiFzBfpkT+B4sqGScSKr7aX3/zbXmEzdEcTcqpHfL6EdPS90XAYs9SDpwlFBgS9LWi8TN3IArU
 XbaInwQFx4n0RA3ekqUto/fLLXSf/nONw3oITbyjLX84CGRVjnA5O66UCZhyzbRiPeoarCKaWlt
 jy4wwDsN
X-Proofpoint-GUID: E8hzVDnfXwj3RWua-PHgbuNHOnoahIGz
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d36b6a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=uj2zFQKwFRccP8yYN94A:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_08,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
ensures secure SE assignment and access control, it limits flexibility for
developers who need to enable various protocols on different SEs.

Add the firmware-name property to QUPv3 nodes in the device tree to enable
firmware loading from the Linux environment. Handle SE assignments and
access control permissions directly within Linux, removing the dependency
on TrustZone.

Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f4457..b21fa6bc36cf 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -588,14 +588,17 @@ &pcie1_phy {
 };
 
 &qupv3_id_0 {
+	firmware-name = "qcom/sa8775p/qupv3fw.elf";
 	status = "okay";
 };
 
 &qupv3_id_1 {
+	firmware-name = "qcom/sa8775p/qupv3fw.elf";
 	status = "okay";
 };
 
 &qupv3_id_2 {
+	firmware-name = "qcom/sa8775p/qupv3fw.elf";
 	status = "okay";
 };
 
-- 
2.34.1


