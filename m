Return-Path: <devicetree+bounces-249330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E12CDB0EE
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 050D73008FA3
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C819B26A1B9;
	Wed, 24 Dec 2025 01:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QfSbmJzp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KmHlZ9Bv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D247264A74
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766538779; cv=none; b=Jn0xcc5+rywMTidzxKkNMNjyY9wXDis6MT9VMZS7pYW/0xzuVEDg5Cws2ifv0uDKeO8Hdzm6qzkhmwzI90OGtAMV+OLpJj5Tp947B9AKQZBqvThANGj7XcKr8RAC/HcQZsPe/dgPoxEz4SGX/kyL9BjQTYkDPIxU5b1GyKW4jpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766538779; c=relaxed/simple;
	bh=8X41ZjfAuuj9MQIn+lLzP/fXdK5Qw3HROKBiWR0AtuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mfA3zfH0bitLRiMBvDtt1DB0jI4sJXlvhRzWB1gU/o0ROnLnKLP2e/FhsNZiIy7LHHX3+es+Bsf/uu2Ml8PyIQpl3yt8KWIQ+vFdg065zM4iUcb2OOObrygvBd4itaSXxvoSZMgT5GBP0K4EV9edkELCOKUbdaWLrmjTQlYqoPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QfSbmJzp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KmHlZ9Bv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNHrcjU678255
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oVGnFQ3gqli1QHEJXbge8cA5
	8T1nSyBsOaPKVoUKLRg=; b=QfSbmJzpQZZ9Y9KiuDEJziTx3vl1Ow4lrUAww0nU
	vHdtIQsSn5onzKEBX2iR4TlgBi0RHksrgVRrhuRCoPgBCz4BShObEVDqexGecluO
	8iUMd1ut9B6C6vhUFVPa7qU++xqLUmRQyi82pEpT8sqBZunWOVZQa9Idj96uciyt
	mLWq11W/IK99/qVoxTXZolu7pXZ+JhSm7M/QLb0DRXntHNicJs0TEsFSmTMQElqW
	D0BKyQf0CfKI3YnBDV0GjeXHXslUxvkht5jRBmpJsgTVBu2h29Yc5MeyZHoOOI3Q
	+tBrCADGA2yq7oOo9DCquPlePC74j7+dHpgBqDqA7KsxPA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq11vb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso139818671cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538776; x=1767143576; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oVGnFQ3gqli1QHEJXbge8cA58T1nSyBsOaPKVoUKLRg=;
        b=KmHlZ9BvEfZPdrrLQ7fxHkuXWyQYtH08r4ZFlZInkmrYiFKE9TF+FTLp02AJ5nS5YH
         1WnsBBlDd2N79mNAuEa9/HLBsjd0A1/oCGrFg3Alk/qG7CEon1NgIYTrl7u8yFHNSSg9
         XjjuUfNGF1R0uCnNnbF7ZnMhFthjiuIc3hGduJSKtRTP5nlTQAwjt1YH19Ue5gHGsxJU
         jajzqiP2RZUXQHTmoFJ4n9pKbL+bGmvKZnE0mvQve6W45sSqmJHsUWFiKJx6BmUTWtVa
         EanR+AWaB7zIYbLrGnHJgFn+d1iQ4Pdsz6NsYOqUvnaqOod5c0aqcFXVU0xww/CcBAuk
         HMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538776; x=1767143576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVGnFQ3gqli1QHEJXbge8cA58T1nSyBsOaPKVoUKLRg=;
        b=JOnkLRbYBsNBsdCbmmyga1XYXrBJ59YvhPdVc8ipkswahxnTJcR06O79wxQJvSOIhr
         viCVlkS41dWis2ExgJehCOQy0obcsDYid+8veP0U/h3AuQ0u3uStoHSDSUWvQPzgy1PV
         zX4+MFsBENEDlvPuCNgVJb6sV8XhActmNc8qk808qoSHzNBmwJUgE78dxIw2fPROTYbo
         GtfXcKH4DVlOVw3WuBaOemgpvmMJ67Fyi4Eu5gSlyhATu4s/EzMxysdMAfEvgXeR4rBU
         vc2WO7S28bADqr2C5iK0OVju6useZPWdxeMmQ7qRrWOGCNttlUITxG383F0SOnOUsmPa
         zLrA==
X-Forwarded-Encrypted: i=1; AJvYcCXc6xjEKM1nAjPDK9NZoRuqhSFooGV5fzTTcUMvQlOcnSgzZHGRbvfRhz4/J59Xh5wqgoENRhiT80Ue@vger.kernel.org
X-Gm-Message-State: AOJu0Yy27uf/kujYfrBInUTcSDWHkYcrHxtHgHsxG/w4PxBpnj2BpMcY
	jvKChCXT5gTGPz1FUEJzws6sXTOk++aWv2AbY+twquJoAYHKsJyncNfRLW9CAi8Q6/1pCsL2ffC
	w0XByA6mz5k2iYZmAodeLpfAk8xTunLpcukXfmAWDufBnkCmWKaU4ahsO/I/GdBsI
X-Gm-Gg: AY/fxX63A6oeyQeTXDCMNkEn2y8QPe6VzmDCAbNmofH0kKpqp9ZZtBpIodx1CTVn4PN
	AWSIJ57ACtWPBhOGw5a0NAiE7iptyV6nAg4KVAeIbi7jK1hLfK+oZ7r2APGDxqGACwumxmcZrK5
	k6ZUIWwZ4SEmkfuHtd0cT9s+Q1LgHbv1enXBuRODRUPMI3bNuqfbh4bk1574jaHtimoxxL8dTrH
	rJJUZa1a1m5yuMkpqSnwZ6Dd7DT6gei1vMtHSBv/y80935j2YxadocYdwSAv1pyBhnMeX6xKkCj
	t9X26TOhBEkFI9hLQpfoi87IwEZdAMxNS8AB2X24AlaN7c7bo3/fBX/rPC5gIEwWjbYtoZMFc60
	DEgBNdhUsLyEuuC0XSWpfeAnwLTjYJEbf37F05ZcOG8hlXDkI67b/a02t3DIjnCsMR6sRga2tnX
	AnrNUvlSvtY4mnVD/1E0jiSew=
X-Received: by 2002:ac8:5e53:0:b0:4f1:b362:eed7 with SMTP id d75a77b69052e-4f35f4849eamr282708571cf.42.1766538776334;
        Tue, 23 Dec 2025 17:12:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHE4B7/rPVFuJHrgTNYbucMWLjNHWMuUQI0EU8npl+25cOJb1pV/0Xke+yOfgEQK+FXxdRvVA==
X-Received: by 2002:ac8:5e53:0:b0:4f1:b362:eed7 with SMTP id d75a77b69052e-4f35f4849eamr282708001cf.42.1766538775854;
        Tue, 23 Dec 2025 17:12:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd861sm4587300e87.30.2025.12.23.17.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:12:53 -0800 (PST)
Date: Wed, 24 Dec 2025 03:12:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Simona Vetter <simona@ffwll.ch>,
        Casey Connolly <casey.connolly@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 05/11] drm/panel: Add panel driver for Samsung SOFEF01
 DDIC
Message-ID: <7ssxf6rprsllmfte2neuobccnbcxbk4vrintgvrm7aghaqxwma@wivcio66spjh>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-5-82a87465d163@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-drm-panels-sony-v2-5-82a87465d163@somainline.org>
X-Proofpoint-ORIG-GUID: C1SrEfW8Q6mOJndcVN2jplxVM5aZIbtX
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694b3e19 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=tVI0ZWmoAAAA:8 a=EUspDBNiAAAA:8 a=udYctNd6dDZtC2LY4QMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-GUID: C1SrEfW8Q6mOJndcVN2jplxVM5aZIbtX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwOCBTYWx0ZWRfXwb/vsLOEp1R7
 UWwGRSChtjx3l3Jq1AnFKily+nFHDD70Sss7/rhq3Awklljm85c6fLwkM7iPb7rFreaXvnWtxYZ
 Y6jJRWWD5obs8gKr18ztx7HJcMXiJQ5EcuioAHe1ntUiW5JwwDOSWbhnb9Mp1RQLoEa5SKrQBVU
 shK5INkONDKRq27QhtKPOGSqmUszdalV1QnQNE4jgHIPFH8e9GJ0h4bzDfH6ODADxP9CNhGulq7
 1niQlgIizaeRJHwrh5m2TM4uT8CtVBo7OByDC90XvL77qEsfxe5HTbYjPrQ73L9WFxKLIkNLFhG
 xf+BcQPYmuhTnCVHcQ37tV13E71tqcMPktwChAzppRRlDBrhU6WAAg+gloDBFlnvnsI7jEdt6dW
 1Ylj5m3V920QSKhdg5r4FFOC3PVxDoe+gHzIpqPFWX/O9cb7CQgMchDzX+cyKjyKcpHK+Ii9nnS
 MXbsyoGN8IG1D2Gkwlg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240008

On Mon, Dec 22, 2025 at 12:32:11AM +0100, Marijn Suijten wrote:
> This Samsung SOFEF01-M Display-Driver-IC is used to drive 1080x2520@60Hz
> command-mode DSI panels found in many Sony phones:
> - Sony Xperia 5 (kumano bahamut): amb609tc01
> - Sony Xperia 10 II (seine pdx201): ams597ut01
> - Sony Xperia 10 III (lena pdx213): ams597ut04
> - Sony Xperia 10 IV (murray pdx225): ams597ut05
> - Sony Xperia 10 V (zambezi pdx235): ams605dk01
> - Sony Xperia 10 VI (columbia pdx246): ams605dk01
> 
> The amb609tc01 and ams605dk01 come in slightly larger at 6.1" while the
> others are 6.0".
> 
> A "fake" porch calculation is included to artificially bump the clock
> rate necessary to account for "transfer overhead" (DSI packet headers)
> since this is missing from the MSM DSI host driver; porches aren't
> otherwise used on command-mode panels.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/gpu/drm/panel/Kconfig                 |  18 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-samsung-sofef01.c | 463 ++++++++++++++++++++++++++
>  4 files changed, 483 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

