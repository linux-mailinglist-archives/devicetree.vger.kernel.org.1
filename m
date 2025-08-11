Return-Path: <devicetree+bounces-203333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FAFB20BFD
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:34:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5515621534
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38976255F59;
	Mon, 11 Aug 2025 14:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WQXVCN+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04DB2459D5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754922516; cv=none; b=p7dFXJzgJ0oLx36QGNLswdX0K3Yr4dsgDzuYpbMF8KvVIVdzHHVGqYmYF//nB6s0QhHSM6oFIymvqU/6R7Xq/vJ0RyFeCiuMeeSI4azsuXZ13BcxcJCrG4tTvWDXkdPmfpsFIrPXdmG97I5vXAp9hH9qSNURes5PEsDB2EHzALc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754922516; c=relaxed/simple;
	bh=BF2o0J4X4dNDWLPmAfaZ4g7ss5WP8AJTmouy9JzbXbc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESeBn8p96a9m+zd2Y48+cG+JowWIEdCy7J2FcBc1czCOXK8puhkDK0IxT8HCnD8OjbqhZUCogSt/hezs8VELicvBPNgQiDUWgdUm07DRm4c2OFfoV4gUa57tPbXqVjCO0Rfy5zyWFdFYj+Bh9PdhqSHCZnidDR2zywAM1hOkfGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WQXVCN+x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dA6V029206
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:28:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8otk79pR7SX3xFs7QNxJWm0WRrWf5HdOaBbrijkB5Yc=; b=WQXVCN+xwBKDUAoN
	j9P4Ovg5Fs1XYYB+yBwIMqBBm+ynckIuOKQHfYwG042m9z0MOS6ngTNkczRYMDEM
	yHHrSSJXaj+GYOf85cRfpzRzASiG2SB08D4Fjp0nvp5PVLGgO8Sgl0NCfTJt59k4
	tu3ZHDNp5Jdy/lvsujRjHzQekqaLbvuBxsCXwhMyduCdWVyY8IIUx3VOAlhtSPUE
	UVkl9ClhMyjjiI5P9tYJKZuX+sBnCBa7Vv+xqItfHbViuIqEKi0mzjAuX3c83dSV
	j1XvXWA9tKYJ/+ojiFxb9t4Ar7v/HlKMT9iAE9rZHgRfshlzUKxdOdSvoKPGg36S
	tOh1Fg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmcpkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:28:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af199d0facso139722151cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754922512; x=1755527312;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8otk79pR7SX3xFs7QNxJWm0WRrWf5HdOaBbrijkB5Yc=;
        b=TKprIAsO6odQRbmL19WQFL+3ntu+aXTQaTefRwoiuvoSUfJ1synKW5MNfSyK4hiUye
         33tsv9AltSzVB2NleJphKWaLQb+JMetyL5JlFucuQ8T+s28lLfMd/+tKScW1822swBSw
         /ZJE2M55qYoix4guSnLjRSnZxB7SpxC6SGrCE7BLJwUqhaPmZDDd43812oiVoFRfWBlQ
         XV66Pkx128ahoaSkmG4zeNIqxp405pVeBfbsHVZy9ds7AjE82F6NcvWmgY+cTg4Ch7P5
         rrbsiBOheb7SNS9D2IacRBLrx/YrAHIr1sJhnYyLicpApOaOlSo7XAf6CHd8LD0/EEan
         dtUw==
X-Forwarded-Encrypted: i=1; AJvYcCVvy+bKlom49v18dGvFGUMG1elUmLocQ9a8kEiOiazMZvgxKIHMiw94w25eEIbO1fa8KIn5xWMEzRVV@vger.kernel.org
X-Gm-Message-State: AOJu0YyeHY8eK4u6WdVK54dqW9oKrFkoVTOtDJUz0BAJckWmKtj/6rf6
	YK1viVqOJOI9IHR94jEGvBVf/YIAELicmExO4+R3U7q1KE9Nx4E1XreSVzGUnY5mDBrqw27VMpj
	9qEdwBblJAuLN9G/xHow36R+qGEC3LVh2XbN4/gSevL/TDavwPwaTatQpXpTGtKRf
X-Gm-Gg: ASbGnctvf/Jf7S5xSrcn0B32ol2CADwp4w/2xaBumTkzL9IsozZWxCaf71tyZSId0Ve
	8rPAIuAuWetdbq9yPI5DGxjWLKNa7G2vOmQWx0UhO6XjPDx70Llos0VZPFsMNheN9TpRBNir/5H
	X0z5/3uUXHJLhjLAdBt6UPT3/bal+thV0FnOUnVbDt9kHwNJIk+Tf4sI3+OmCjQfFUyghb6AT9r
	FD13oD6gA7cmbLMzLnxz/Ilyaoe8NP0jfnaDTNkHEGOpxnOdcRrzQh5vpz4wDkrhaU3TfZIrh4q
	V5El3vBdKXpQAsI9FW6+uvVXB04AQRI7y1Y9X1+2iuLML68nEZgvmL3dJpbUeLD5COACZf27V4E
	GlyibtuM8kVXPYzJ+uOrIui54GDAVXx763/I5PWut1OSf5ut2XD11
X-Received: by 2002:a05:622a:49:b0:4b0:66a3:f130 with SMTP id d75a77b69052e-4b0ec2bf18dmr871681cf.11.1754922512404;
        Mon, 11 Aug 2025 07:28:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfTZBcEJUyG8F52ssE1g5amBQt/le8ogJrgC3XhWx7A+L1MHHysrn3sNgcMm4fUuwp+wBFsQ==
X-Received: by 2002:a05:622a:49:b0:4b0:66a3:f130 with SMTP id d75a77b69052e-4b0ec2bf18dmr870901cf.11.1754922511734;
        Mon, 11 Aug 2025 07:28:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc6bf7fdesm1263782e87.137.2025.08.11.07.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:28:30 -0700 (PDT)
Date: Mon, 11 Aug 2025 17:28:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Describe on-SoC USB-adjacent
 data paths
Message-ID: <hjey4kizoizskf3cdcfko2jao2zd3aqpobk35hxsepxqy57p77@jzmldv5ieu3o>
References: <20250808-topic-7180_qmpphy_ports-v1-1-718d7c52921a@oss.qualcomm.com>
 <7bptwqmqimkuixgo3zvwfafktx7sj6a5xzfcedip6vuudhwmqt@ey7cs7x2ucxr>
 <4478d71458f7ae1501de6cc1a65e98e3@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4478d71458f7ae1501de6cc1a65e98e3@trvn.ru>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfXz8U67kOHurL9
 7F3YoUBeOZxICTHZbJX/k6BYanvhXc3mRt65LF1rt30SnQ1a7naksPJrr386NCw6EmOCP+Hqs03
 cCqXduoB6Lh4PWX/vID4VyJH3bOhLV50JorHVR4H5LuJp99ipWlIxSAWd0iwPMc+NVWUhOeF+kw
 fL5CcNcOt9PA8pWCJMpGee6sWj/i2HYH2IMDdsuZPoVU9xkcamz+3+2Xv0QRhYzOSmPTWOaObOw
 RnYVyUt2cTv5/QjUxUiBkuZtHbQhH+xprcD2OjkEt89ZM0rt21bLTHF83QiRP8aMwkKzqfhrX8I
 O3eX4Trt7JHM7ofbpI7NDy0YywiaocGi4K/dTLSQgVo3FR/xcp8WHDGTyEz51++3CvSBe4oDxAv
 ubmkL9/b
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=6899fe11 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mP_-9QhUD8djvHu1yBcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: boc_ANQoOq2nPxFUvvz9txUMr1r75NwH
X-Proofpoint-ORIG-GUID: boc_ANQoOq2nPxFUvvz9txUMr1r75NwH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_03,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035

On Sat, Aug 09, 2025 at 02:43:47PM +0500, Nikita Travkin wrote:
> Dmitry Baryshkov писал(а) 09.08.2025 12:49:
> > On Fri, Aug 08, 2025 at 11:20:45AM +0200, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> 
> >> Define ports {} for the DWC controller & the QMPPHY and connect them
> >> together for the SS lanes.
> >> 
> >> Leave the DP endpoint unconnected for now, as both Aspire 1 and the
> >> Chromebooks (unmerged, see [1]) seem to have a non-trivial topology.
> > 
> > If I remember correctly, on SC7180 the DP is still routed through USB+DP
> > combo PHY rather than having a separate output. I'd let Nikita to
> > comment though.
> 
> Per my understanding SC7180 has only one DP connected via SS+DP combophy
> (At least this is the only thing that is exposed by the QSIP module)
> 
> On Aspire 1 the SoC USB0 is hard-wired like so:
> 
>   sc7180        USB3 Hub             Type-C DP Switch
> --------+     +---------------+    +-----------------+
>  SS_TX0 | --> | SS_TX   P1_TX | -> | SS Tx           |
>  SS_RX0 | --> | SS_RX   P1_RX | -> | SS Rx     Out   |
>         |     +---------------+    |        (4lanes) | ==> [Type-C]
>         |                          |                 |
>  SS_TX1 | -----------------------> | DP Mux ML1      |
>  SS_RX1 | -----------------------> | DP Mux ML0      |
> --------+                          +-----------------+
> 
> So, basically, the SoC combphy is assumed to do 2+2 DP alt mode in
> primary orientation, and the actual orientation switching is done
> by a separate DP mux/switch (Represented under EC in Aspire 1, there are
> multiple chips roughly governed by EC that make it tick)
> 
> Currently this is represented by merely connecting the MDSS DP to
> the EC node directly (to represent the link between TX/RX1 and Switch)
> where the EC node implements a bridge injecting the HPD signal, which
> I assume worked out because the combphy driver so far just hardocded
> the correct 2+2 config by default.
> 
> However if we want to rope in combphy into this (which I guess we want
> to actually configure combphy and not assume it works), we'd want to
> connect mdss to combphy and combphy to EC at least in Aspire 1 case.

Yes, please (especially as you have hardware to test). I'd really prefer
to have DP being connected to the combo PHY (as all other platforms do)
and then we can manually /delete-property/ orientation-switch inside
boards's DT (as it is not being used for switching).

We have a way to describe onboard HUB connections (see the second USB-C
connector on C630).

-- 
With best wishes
Dmitry

