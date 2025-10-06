Return-Path: <devicetree+bounces-223811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DF16ABBDB39
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 636AD34A67A
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB71D23D7DA;
	Mon,  6 Oct 2025 10:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bZo+kfQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418023C8AA
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759746915; cv=none; b=u0NDPrPD1e4qXw5TJ4L/qX4ZEeoUKyqkjCEKunWWcf9zm/KTKMeAY1qYQIsHF32CIXR3tCa2XVdn7PlqdTKmA1h5aAtNST/2lw9FDD2VpPRmXnOMAX6FB+TsQ01vdbRVQDeYVfvkVNqmD/WvaW1+GSeovGMDFEWdIutC/5xAkbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759746915; c=relaxed/simple;
	bh=KOEfItLpTHHUF2NjaTltq4XrtKm97oaO8gQyfhxK6zg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LVVlNa8W2LP/WXVIT4xXVrgjC+1aBDcSt5Pxpe6yLtQsq90tbNYmzDyOtRz0s1bFkd8TKBIqo7KsU041o04UBiB4bpFy2E3XuN8jpWpJ51VfihJWq7gd31EbYgWg2buAJ0hWX0UTk/gOzIum1DIM2jCWFuPwqV3ev9vdVhdXbsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bZo+kfQz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5960c9tT022432
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/GVt1K9Lflbj12O6/RaG4Mti
	+z7CPLMv3q3Zlvsed98=; b=bZo+kfQzbY2w14g+9jjoaiorc2gFKSmmjrAZdx4v
	2cTdYL8jmknRf+PryJo564MYnyPaNeyff33SJYOHctCuZbgQIoZwrEl0SmWJGkVh
	6viz29fRyKqYPn4J4iKz5gqjfogUTuUiqz3XpuQ5UJfogW65pgeNJoZ1SmBVdEQ2
	yU5TUiXE6uutxE5wzfXe87XMc2PbRfyQCYS0mdQ0aUGiaYrL8R6fpBLCfLUeiq/8
	SbwZJ4pk1mhoUbpAlvd7msAajxhVP/Yfmsct/++485ZjMmGJcjcsRO8twyJnWGXz
	3ARxoE8FARPiRMCxOgkoU4ZQZoWoKOlP4HwKVuIEnXfW1Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7kdwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:35:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e0e7caf22eso127996891cf.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759746912; x=1760351712;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GVt1K9Lflbj12O6/RaG4Mti+z7CPLMv3q3Zlvsed98=;
        b=vTHQrlAh510/OAtyWv4UH4WZ1+z7LvlHAJba7HDXE48G6QennCJY7JrvSXYYS1gc0N
         QhlvyF44nwZCOnDtJDDic2tv4Q/4190F7GoEyOSYaC2yUkpFOC4Wl5fflqY0kJyRGJRm
         vAjwRUfclSXEyqLxDBQzhp/Ff2gF2cHgYiGymP8hzjY168npGA/qS62qiP1HthtAxQ9+
         hGm7ERg3Ls3SeYd0NXRou1ia4clKLCMyC7qWhevFZcZsHoaY/fRxYwTwla8m+/7TgyOv
         rufFPFkaSi27vmzeIVKM/gKBwMR298cDeStZCP3UjDrVGkpEmmSyjZy+sy9Bj8m49qpU
         hsVA==
X-Forwarded-Encrypted: i=1; AJvYcCX77OaYDIrNz0gMQYzDtiA4HbnK8vA03Ts3OaHIuGWi1iD4o6QF4qPZmjYPDUzwicKkeuKjLS6Cm4Jv@vger.kernel.org
X-Gm-Message-State: AOJu0YzCKVS1fvN91rVy9XMZadtxxbz2NXIlip8+fUg5S7QCmbOoDpXF
	CPeFCE0fd1HXjjPvejtCZXcFhBLTkIXZqVC51emkG9mD+IUcJRzUNohxm55APFDw7lHyHqvBOle
	9aR+ISq0wbZy7j4YujNVfhAbOQXRYRfWz7YmIReywBp6hc50PTTqk1++z+rrrFKFv
X-Gm-Gg: ASbGnctjxD6wB3ZFmEK+URI+Z56n9tTZPBhB+r0OPgKqLEE/fQ5JTt6FtEyl0ahzwyJ
	QONcuBqRpnZ2zzCEqISzA67nDES0XGVcppbZ5F1SPG9Igqi+Y/2SzuE8Ke1KtHw8ILM7khj2GIm
	nOTOEie5KuI+klILiW0/81ttZN4kfziDy0De6aQ3ejO4E51bM2Lx7oCIdtuxiz2oejXJDPHAeh/
	ydB9ddOkmynDor4NFmUYg2ZIbAhqGtYPluzsU/d3kLQgavfP+WYA9kZGO3pruPz+6tpOsfW+1i2
	jW82k8kpBDTm8lMcYo6yPMdY/+cdU8IYNr86gUVhnVySbjYCZfcSpsbMbCWuy9GXx2CXbVAyhnF
	isefDPrVC5ocHym2fZkjfiHGzLpZ3ZOzMaucVZABpctZuuKDgQL+w+V20ZA==
X-Received: by 2002:a05:622a:4a8b:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4e576a45338mr152170391cf.8.1759746911803;
        Mon, 06 Oct 2025 03:35:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHD7NGFTQ7j7kDpuOlH2JVm1Bio02PxWYP8W51tf9aEfgOxa//y48qL1owpgFsKldjyFIyTGA==
X-Received: by 2002:a05:622a:4a8b:b0:4b6:2be2:e816 with SMTP id d75a77b69052e-4e576a45338mr152170291cf.8.1759746911251;
        Mon, 06 Oct 2025 03:35:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4cdf47sm43332131fa.52.2025.10.06.03.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:35:10 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:35:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX8ClQrddkbDNb
 dV1aqrpL6pUp2t1EY7h7HtPsW6gl+B8wcZX4xMrtgbeFdgzHRu15KZg894Oeg3nM3IBTSAi5X9E
 x7w4he9oLUKt1OYvISweRtxqMjSIhxfNtNSDboSDvY2WNRN02T2/lx9BRRKjuC887DSj6Phj384
 uC+Lv9R9SibRqjcm8w1SZmg41Cp+wCEpmXlv8LFqgzXu/wdifZYNZpDTTU9hYl6SXYfzkaeEFjr
 yX5x8GB/7oME843sorr5MA1rxnq8wohGrpBEXgo6IPLrVG5JFmiDhb0SKL5cGhIP7LiSTfBOCVB
 v6eLPzPjOsigjUhkrMg1qfCNd+o7U7IrIXo0tby1FKhgFaXuTCC3mWVltGygm/z+V1WpEQeYe7c
 PgcqdZIJvunTutGvizg2RTShh37Rig==
X-Proofpoint-ORIG-GUID: -r4iLrq9e4n-oaxzUp8gaO8qjfodLlFg
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e39b61 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=LC5ovIGdoV6AwfhOO1gA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: -r4iLrq9e4n-oaxzUp8gaO8qjfodLlFg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On Mon, Oct 06, 2025 at 12:08:22PM +0200, Konrad Dybcio wrote:
> On 9/30/25 9:39 AM, Neil Armstrong wrote:
> > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > of a combo glue to route either lanes to the 4 shared physical lanes.
> > 
> > The routing of the lanes can be:
> > - 2 DP + 2 USB3
> > - 4 DP
> > - 2 USB3
> > 
> > Get the lanes mapping from DT and stop registering the USB-C
> > muxes in favor of a static mode and orientation detemined
> > by the lanes mapping.
> > 
> > This allows supporting boards with direct connection of USB3 and
> > DisplayPort lanes to the QMP Combo PHY lanes, not using the
> > USB-C Altmode feature.
> > 
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> 
> [...]
> 
> > +struct qmp_combo_lane_mapping {
> > +	unsigned int lanes_count;
> 
> "num_lanes"?
> 
> > +	enum typec_orientation orientation;
> > +	u32 lanes[4];
> > +};
> > +
> > +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
> > +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
> > +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
> > +};
> > +
> > +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
> > +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
> > +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
> 
> This is not corroborated by your bindings change ^
> 
> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
> would be TXd on

If we follow the standard, it should be 3 (RX2, TX2, TX1, RX1)

> 
> > +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
> > +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
> > +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
> > +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
> 
> Would it be too cheesy to check orientation based like:

That won't catch weird errors like {0, 2, 1, 3}.

> 
> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
> {
> 	return data_lanes[0] == 0;
> }
> 
> ?
> 
> > -	ret = qmp_combo_typec_register(qmp);
> > -	if (ret)
> > -		goto err_node_put;
> > +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> > +
> > +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> > +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> 
> of_property_present()
> 
> Konrad

-- 
With best wishes
Dmitry

