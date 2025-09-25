Return-Path: <devicetree+bounces-221097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E3CB9D318
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07C1516A7B6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DA82E7180;
	Thu, 25 Sep 2025 02:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aE5kPspM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACDD2E54DA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767421; cv=none; b=LOaeSS2v7jAi4hasVwtJ4ngrT7delvdLaz4oarAF1Wz3646hrKohMRf2ID/WZHblEPGISasAVt3G3QK2+1fHfU78WZ/QaMcNe9Bc+gH62kcmGY4b6q7GfKOpDzUs0EpULVkx+vuHFtGMvdYe23mpjSb6FyFozFfhliiI7kP1psc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767421; c=relaxed/simple;
	bh=plWV8FVZhzKc5SEDmUQW15CvTrIhFuB2nHQE60yUcgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y76fn57RzYBBzwve0mps9k7GR5D0G86RFGz1kmi7IA3MKcfhGBgx7WIJWoxm7rW995icmwf3UJBpLJRB9etQpRTD8urUx20CcOhjq0qnz7C0kN/Lku/HIDsl3MZho7GB7ebMJ/C0BJ0GobX4G3n7jsaigBPW7oVWk6rrcmfNpOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aE5kPspM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P29oDQ029717
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:30:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hEXHJ+SjOGDYSQB3Fj+ilyow
	IaPOlrIE4x+LCn5HbjA=; b=aE5kPspMgFYexH79wxX5NzYAOWU/cwsECdTvxoQI
	0dg1NE4znLh1q/o4Q1y/MNbnZUj7yR8fW6vBTkVTOLTG3cosBmar6/BOK6X0PHiJ
	KMIQQv0USvLsPqEzNgsMCdGZBXJtGyuR2cHPSzHFilm4hssAU1OR6Qp5cKOIzMHL
	ZBUMSwCi/W37IvS3wzkwTd6mzfAkJhHqc/a70hnQ3hs2EA89NeZplgAzOj0FegR6
	hIoMzmTzM/ssgNtKeqedEG9yAdaCG3sSAPN12g6bx+lObVwTbexH4laB4MYJIHTY
	lkDzOBACtnfArZ+Z0Pe6r1TjNDcIPyUuEXzf0GcbXyy9ow==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fpaxg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:30:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d1b3c6833bso12228061cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767409; x=1759372209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hEXHJ+SjOGDYSQB3Fj+ilyowIaPOlrIE4x+LCn5HbjA=;
        b=hUa4aL0EdCUDpmhnFN5QVL0UeqWPRfVN2vAczZEFhKAp0uFb+ctSBpt7ImZ3PGu7gq
         7lgzRmH/pXnSOkZSVe3UxfHQ4Txk6eRQm1MIakejFdi/u+mtlUCRwTLdWSJNQNlhUnHJ
         U+ZZf0m6Nu2ciq2AEhpLbPNPifC/4czCL+zljIohOigtoPKebSzD9HoNatx3qPgQFB7U
         QqOzAnX0blXhp6JFM5gXDI3blrUNb9jSLjv2qYHvAz0RcNNNkt2GHXX15rdYROBhLFTF
         Da0BJ/aAwLYBoMlrxxtsBikRQV67p6PTS7fJ63F96BcYvlCAcrRZ4hm5UH2E2hVNNVVT
         SIow==
X-Forwarded-Encrypted: i=1; AJvYcCUr9wfAqE5hinOrd2Wb7y8k5HAGWkf1RbqiKrQ88Q7mXP+yU0AcX9K7O2go0or99NK6NcUiK1gLgVeN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Qc9XI4g/zYd+ECwiSzfzn9hrMWd6YigfsU03AuXQRvlCkuym
	4MxrGIYjyXMqln1aedmD9AKyYSy0FDPN6/TKY2Yx6ZZVpixqawtbipBemxRD+pOuJF8H95mQzY5
	NxL/v/VEtdq7ROXcb0a5kHinRkhxFL55nBSWYyCFihXqvs/anaBzREzOeN911zZ9O
X-Gm-Gg: ASbGncuqdzODE7q+CGQdvxzcLkBTLmbFrAJrSa9wXm5v+dJIVL81SEpCnxl0zThvDT5
	aGDbh8bnEqNn+uFHC71YnjBLvc5xUeK3BlRCzQQXD1NcogMerV8DmtC/U4sthEFF+ZKl9RU6Ytf
	Vqah/P4MTY/NUEiJify/zVyZ9+Ld7anoW6bW21s0VTff2BbKAEs19k0vX7eAzVVtWAoCGB7q0ds
	UkHWgX5ETTg4t4wlKsWcNn8daL9fuIE+AEKDbnXByzKH3NWJA0WzTA4AX+u4OUCc0RUlSzhhL9u
	WLrBjJyc+iCpaZjDfPLpFD4vsVWNhWpRGMv7Mj08Hq4w4bgx3hLFjsUCuOyKQVgUzsmbQoWiXmS
	NrFNe1ZdmOrKYp/DUXs3fm9fe18xwIz/32u8cc0CzWu3h9VCWBqlB
X-Received: by 2002:ac8:5f82:0:b0:4d1:7f1f:af5f with SMTP id d75a77b69052e-4da48d78e03mr23750941cf.34.1758767409423;
        Wed, 24 Sep 2025 19:30:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYRodSYOZIlp9dQwajaJU2RST1eRjakBYxnpjkIG7EzbAunG1wg2V/xO1WNTRFimAPmbNJEg==
X-Received: by 2002:ac8:5f82:0:b0:4d1:7f1f:af5f with SMTP id d75a77b69052e-4da48d78e03mr23750381cf.34.1758767408636;
        Wed, 24 Sep 2025 19:30:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430c1esm253515e87.7.2025.09.24.19.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:30:07 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:30:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 5/6] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
Message-ID: <gaazbca7xrai7nubxgyk6gbm2aznqbli57psvzquvwhdfamupd@g64zbtyy3hnt>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-5-5fb59e398b83@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-pcie-v1-5-5fb59e398b83@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: WMFh-nIlCp3amFvhNaw8fGkJGD0ddB9k
X-Proofpoint-GUID: WMFh-nIlCp3amFvhNaw8fGkJGD0ddB9k
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4a93b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lBzdhH75gVJACzjABzkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX0GS3zAF3nopz
 gc9evtOfC7/ctNsd4bSHY9C3yw0z1xPVKY01ev2+7t84HxBOgLOuyJ4rZIkbOn4uWQqDoFvaRFC
 k7EK6Aj7XNaUnGnYMbzAW+ENcwGj7kUMqkHsg9AOS4HOfau+RL6ZZ6GqFdaFNfq862d+7MNX4s1
 NsH2gS6M1gOCu/sjcxd2xlnhr3XqJQdcsrDWLfgKXZfYJL7AcYJlSZUGk6ZopKYqk0Er0CgCOi+
 jSmeZhfk2l+FeMQdISwlywr1738lcaDu+FftfKWs7zYSUoxmDE75K65q2rE/kLtJXW0eg1qodiP
 U9DRcU4guJBvPW1rhekpbS5So63eGHT1yWcnc5ybBZdKoJBQz9/DwlWDlKF/pEL5CM7TnnOchXm
 AvqNRkhy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On Wed, Sep 24, 2025 at 04:33:21PM -0700, Jingyi Wang wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Some qserdes-com register offsets for the v8 PHY were previously omitted,
> as they were not needed by earlier v8 PHY initialization sequences. Add
> these missing v8 register offsets now required to support PCIe QMP PHY on
> Kaanapali platform.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

