Return-Path: <devicetree+bounces-228517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3AFBEE91C
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 18:00:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 94BF94E292F
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 16:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933DF227B9F;
	Sun, 19 Oct 2025 16:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="feI+pIQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB60F2EC09C
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760889617; cv=none; b=GGsjmu99PFv3AGRPXGodmtsmsxdzMLT15G7e6gYteostqP41Buiuj6Hor6VS7lZGkpGS4FhB6pJ4Xjt7GBR5j6r1Q9eLnsisLpXKGtdVZ9n1xNUBXPWfpnloKhj3vnpadI+E1ofagF7U8m/ZI4qwbr2I5GytgAvctGyQARfu62I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760889617; c=relaxed/simple;
	bh=xzkqNwARdbLPvZgk1OAgS7gX8Y2Q8ThSI+Q8n9mJvko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ql39RC6iTB24z+61/IqVUfZzaF/ujw+Numw48cailS3fcWNeo05rkQwYM4Cfz+7QCIMcZ/ENBW04XESfNC9ksOizChTQ/SI34oGiLpLSzfTghl2b5jd978wkoAH+J6O5oVdDv6Xd1Hm+nzpUkTYJTxIGsmcxNKWk6muy8KzlJws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=feI+pIQ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JCA4GQ029977
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pAnCrH43ey70zMSRTiR6RqBTO1JA+aVfzw+gy4a88is=; b=feI+pIQ3/fGt1CMW
	xD2FBpeiwuud94vB6kvK3eapY/ygA5ChHpQGrj2eUE9ybAlkpT/N3aXXNm8Vtjfh
	5EMztP3cxfAyqI5mL/IMxJPr0BmfBX/CvEd68Fuq14i+W4jMsoIykAK9fxbJYASz
	ZYCThos0pyHwgHsxOIblxv+g/GozptCjh5sv9U6Q69LPl+zK7N4tuqNY6HMqxPdj
	qGn7bnq1glwaA2uZ5rC8qLAhk6hA3rZYYK9SAjplX0vHN+KdzJDGakLC4Mh3HFHg
	OG3hp6mW1AZr0kNkalPZR7U48ZKdKcXd8s+kq8mtI+GEBPoWVkOXP6nC9PeLSe9U
	9hIfow==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k2gcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8909da7f60aso1093959185a.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:00:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760889614; x=1761494414;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pAnCrH43ey70zMSRTiR6RqBTO1JA+aVfzw+gy4a88is=;
        b=fLX8cpXMFA0ICYfNL73/ONGWVU5yjYV83DuZswRIrbTxQ1BRsN/Tz61NfG7M0PgRuA
         Wrkn5DZ/PuJYz0VcoUhM7425J309jRlIvVYCSmmSHWH2GeUc6IYhv2gzg2xzx2LA/eCG
         5BimqPmPX28GMXCV0671I73k1WDtAegtvIzCPC1F8HGY2DSesJN0wAi/mFMKrji/YZQ2
         MdndXBi6BBs0cAtqiPjp+Jx5yOkydQrK2UE8PYeVnE+86gXp6yNtaUymX76X/edPX2r7
         Jm4tfgKwHtV+p9e1U7NMrixwVO7lzqEc+hlD49zqdaCf2VodsoHRPt1xr86zdqlE6yNr
         TvVA==
X-Forwarded-Encrypted: i=1; AJvYcCWmiLAcYj4c5znE5kYl7QapCH1FxEbqXI81OSZUkqfMf6Cgpg+WnlDlPZsCCmklKwgCue0qgH8e0WzN@vger.kernel.org
X-Gm-Message-State: AOJu0YyHyL6KIQk0xMkPV8oB6h9ZY+7bmwU1C0trb/BmQSm029NsI+Ve
	aetD45I/pmP3xwutd1El3oZAEUZzQNRMxAxFA2bcCeOq1t7MnIs73ruqYbeEzzBWR2rgOMH9w1f
	OCvoY0PTvsugv4llqxMd+1H4lEZ2e3u4X2RmW8fjqYAQsk+Yhod9GZK4ke35u9WAw
X-Gm-Gg: ASbGnctoAm5TJ9zOCptNDHBVO01zcYywa1CKwWLR/Gg75LY7wdhjX/fAV8qRijeNI5r
	5QH2usi/ndBuaiZwGmqWGw0QMleMsIoeiPaNhv4qM8WCTJnd6RTW1vYx3VJbCHf6ggHUk1OEFO+
	bd9OvPMHgg0okuFU92nM8cmmil8N3at9HyWGcc0JsPH5fb3OhAIhdG6XjzqYYLgkzvrYtwfkeOU
	kq3NAjnw8uIUdXfYkRBqd9VHuPtGYQBcXgWcmiJvcGlZViCLJTiCiG2CAf7VLaA23PTlwKnE8DR
	PBBcRd/IFfCXOdR41JXYZnoUAsICtJjMw61gfRFWlaxDxg37+ckewj5jv/jRxM8ZISTE04v1qOj
	ZJ0qZ45BTaqcMItieE/ybniajsEuLxgAY8OCzeGn0k1Wmi1O9c3tOMkU8Iv4rSJNXBlzPH2CFxy
	TSA7/tTswV4XY=
X-Received: by 2002:a05:622a:28b:b0:4e8:a54d:cce0 with SMTP id d75a77b69052e-4e8a54dcd87mr102910071cf.53.1760889613599;
        Sun, 19 Oct 2025 09:00:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCrJXyG7fI27LwTBfN2BGJKRA1ASFutxhuVWs+afd3DWD5EMMDTDstaSi4ip0vg9wyDkDPdw==
X-Received: by 2002:a05:622a:28b:b0:4e8:a54d:cce0 with SMTP id d75a77b69052e-4e8a54dcd87mr102909491cf.53.1760889613076;
        Sun, 19 Oct 2025 09:00:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def16b3csm1658498e87.72.2025.10.19.09.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 09:00:12 -0700 (PDT)
Date: Sun, 19 Oct 2025 19:00:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nickolay Goppen <setotau@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
Subject: Re: [PATCH v2 3/3] remoteproc: qcom: pas: Add support for SDM660 CDSP
Message-ID: <nv2lsvuzrgoepr376gghk2klm7jqtmpcg6auairl6zzm2hks5s@z5kohfm6orn6>
References: <20251019-qcom-sdm660-cdsp-v2-0-0d3bcb468de0@mainlining.org>
 <20251019-qcom-sdm660-cdsp-v2-3-0d3bcb468de0@mainlining.org>
 <sasjgm6pua77syu5qjbr5zxl37jorvhs4dx75lbiqlisr5aq4h@zjxu4k2wcfye>
 <596771dc-1564-4f46-ac07-ac0e9c6c80ab@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <596771dc-1564-4f46-ac07-ac0e9c6c80ab@mainlining.org>
X-Proofpoint-GUID: wxRTHTzj95kPdAUlYZe-2aYBOO4HlOG8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX6ZLk7VhN3qLU
 uL6KE74O9QyIprz70xsebHmHYxVweLYSxVVBIaYM+WZHTZz+H5ABqz7FeWZDI/sVEUxsGxdZC7p
 dBdjq30j8FAMMK8hTsgbzumt+Dh9puM+URwsNpVjdmhq1Z8AX7irKExA6sOE2oK592KXeJZh6zu
 3ot7LUy5gk+KqZlTMLb7gKJzXC5Hu4Bm41Cjaa26IIsvTuYMbS28lbVfKvH+Lcqh7D21/LBxTMX
 60skw0S7fXcgxykyfSKL7baeKxshD+cj4kjRLXX0i0Qd17jMA1rgFgtUFUOV/JMYMA8wW6xiK3Y
 kESvAeAS2KvTxbLwaJff0Me00iGIprDuIVCZ5lSOX5RMy5jvnBrZXNS1R0s7wMPpQQ8AUpsA7Sd
 6Hc4VG9NgxmKXut7Jp0fmVeVjFl9Yw==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f50b0f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=JmBaj7UERdyy7ZS9UVoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: wxRTHTzj95kPdAUlYZe-2aYBOO4HlOG8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On Sun, Oct 19, 2025 at 06:38:01PM +0300, Nickolay Goppen wrote:
> 
> 19.10.2025 18:37, Dmitry Baryshkov пишет:
> > On Sun, Oct 19, 2025 at 05:20:21PM +0300, Nickolay Goppen wrote:
> > > Compute DSP in SDM660 is compatible with generic cdsp_resource_init
> > > descriptor.
> > > 
> > > Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> > > ---
> > >   drivers/remoteproc/qcom_q6v5_pas.c | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # ifc6560
> > 
> > Please send DT patches too.
> I can send them separately

Yes, please

-- 
With best wishes
Dmitry

