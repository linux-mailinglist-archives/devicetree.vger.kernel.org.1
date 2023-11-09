Return-Path: <devicetree+bounces-14830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D58E57E6D47
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 16:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E44DB20BDE
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 15:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6FEB18C29;
	Thu,  9 Nov 2023 15:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ltztnPpI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600DD200C8;
	Thu,  9 Nov 2023 15:22:19 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F14A358E;
	Thu,  9 Nov 2023 07:22:18 -0800 (PST)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A9CaW35023720;
	Thu, 9 Nov 2023 15:22:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=yQEoRSdF6qSesctAfZADz7nEZoVXc95UoU1NqxQT3Bg=;
 b=ltztnPpIJky02TcQqqeOZzzgwAjuJYPI+BAVVoOcXzU9e7JsdbI9U1mixdmhOtRG+cqo
 OZpc0sd0HA44xheOMhez/eu4zfNo6AKmBgI0DjBxXgarpvElgaRaR9v6762G8mlleJJI
 6yuF2WNyaFZ41hdLXA2rGkV1Y9Oj6DLi6AR+qQYpqcOAxvIXm3Wadhumr7vdpieGAdEO
 yY8vh1Iw7b0zY6rMrVqF06FuNqV193fg+tcyr4INkqBBGXyFhdMlUbN4+zyKeYwZQKpa
 9Ig1M7SI53JZePCt6eLVU8BpjHXY7z0LSwgiZHc1ZAkwhCuVld/GiwjkuLIMvMOI+vls ew== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u8ka1a7sg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Nov 2023 15:22:07 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A9FM6dp020141
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 9 Nov 2023 15:22:06 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 9 Nov 2023 07:22:06 -0800
Date: Thu, 9 Nov 2023 07:22:04 -0800
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
        Bjorn
 Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>,
        Robert Marko <robimarko@gmail.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 8/8] soc: qcom: socinfo: Add PM8937 Power IC
Message-ID: <20231109152204.GD3553829@hu-bjorande-lv.qualcomm.com>
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
 <20231106-pm8937-v1-8-ec51d9eeec53@riseup.net>
 <6715dfd5-acf5-434c-a9bd-0a5bcdd72010@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6715dfd5-acf5-434c-a9bd-0a5bcdd72010@linaro.org>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Kg2lboyyytK6CT4e6tUTgqbweZRvYWX4
X-Proofpoint-GUID: Kg2lboyyytK6CT4e6tUTgqbweZRvYWX4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-09_12,2023-11-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=430 adultscore=0 lowpriorityscore=0
 spamscore=0 impostorscore=0 clxscore=1011 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311090114

On Tue, Nov 07, 2023 at 10:30:34PM +0100, Konrad Dybcio wrote:
> 
> 
> On 11/6/23 13:08, Dang Huynh wrote:
> > The PM8917 and PM8937 uses the same SUBTYPE ID.
> > 
> > The PM8937 is found in boards with MSM8917, MSM8937 and MSM8940
> > and APQ variants.
> > 
> > Signed-off-by: Dang Huynh <danct12@riseup.net>
> > ---
> Are they secretly the same thing? Do you know somebody with a PM8917-
> equipped device to check that theory out?
> 

PM8917 and PM8937 are not the same.

Regards,
Bjorn

