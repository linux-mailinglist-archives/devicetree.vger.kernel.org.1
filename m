Return-Path: <devicetree+bounces-24486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB5380F4D8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 18:45:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEF831C20CBB
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648A173171;
	Tue, 12 Dec 2023 17:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="hHBEZZCN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D097AB
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 09:45:27 -0800 (PST)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BCHd5GY013110;
	Tue, 12 Dec 2023 17:45:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:to:cc:from:subject:content-type
	:content-transfer-encoding; s=qcppdkim1; bh=q5Ido0rDnSC+MzKdy0NJ
	yb2XOAZMCmtZKHWAkPDrjwI=; b=hHBEZZCNmyiHJ49IpK1b+JDbsunCKmglkzEt
	a+DDcGqvU5tdrkSsedLV14dTyIsMp7BcYNkN3n6ZERvcdbWePF3FRhZyN7pKM8k/
	NFDFcb4U7xIf35E0Fjy2/cJKYLbFxF8rr7EprM/C8drAkbUOzO5uWPgaH2rrBz06
	RNFvuHaxVNJuehQVZXkxsoXJJ+Et1wshhDE6DOG5KrzfK486zhUSiX2J4wGCWR9u
	sxgLH5jGdc0pC912WGmQcTYYG/rm6VsMgsMMopvhUIR2l3Mbhu3BmjWqJG6G84su
	BfUOtznSwwS1R847kd9BCQhy5TDEDvbf9lJ5raP330A3EiMB8A==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uxkx59cn3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Dec 2023 17:45:23 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BCHjMit024668
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Dec 2023 17:45:22 GMT
Received: from [10.110.26.44] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 12 Dec
 2023 09:45:22 -0800
Message-ID: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
Date: Tue, 12 Dec 2023 09:45:21 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>
From: Nikunj Kela <quic_nkela@quicinc.com>
Subject: DT Query on "New Compatible vs New Property"
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: O-hwIrHypSZ6xQ52S3WuhjEacaPl4xvR
X-Proofpoint-ORIG-GUID: O-hwIrHypSZ6xQ52S3WuhjEacaPl4xvR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 bulkscore=0 impostorscore=0 mlxscore=0 spamscore=0 clxscore=1011
 priorityscore=1501 phishscore=0 lowpriorityscore=0 mlxlogscore=682
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312120135

Dear DT maintainers,

Hope you are doing great. I have a query on DT policy.

We are abstracting some resources(ex. clocks) under new firmware on an 
existing platform therefore need to make changes in certain drivers to 
work with that firmware. We need to make a distinction between two 
different variants of the FW. In one case, some resources will be 
abstracted while in other case, they won't be abstracted. My query is - 
"should we define a new compatible string for the variant with 
abstracted resources(in FW) or we should add a new DT property keeping 
the compatible same?"

Thank you in advance.

Regards,

Nikunj


