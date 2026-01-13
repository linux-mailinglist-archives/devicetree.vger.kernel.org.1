Return-Path: <devicetree+bounces-254701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8198CD1B0B5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BCC23005EB7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943B236B053;
	Tue, 13 Jan 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GXCh/ax4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Av1x1E3p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B234EF0D
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332513; cv=none; b=HCR1CLcHYkKqH4ey9H3a50PQn3+FERxiJ1khLibZnQ7Ii1Sobgh+IOV2sDtvGIBhvx7J8lLEoTeWup8s2HreOmJrkJZ14qTq8rCRaSXngp89pE7TThfdqwU6NUb6jqxSX/Dgez5XW3dJIAAT3fawufj1j5k0FTywputLkX5HLmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332513; c=relaxed/simple;
	bh=LY8dT/L1Ej3Dno7DAOoADrqel59JBPCp2Ms2bZM7la8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RramuBRagb3j5qO3bZBF/veK7xIrZt9pxblL8Q1chlX/3YDJXKT0sqtYk7zB2y+QfTppvSWcicPX7DIUtxc+5ukszqiu6l1YrIzR/RZvuqZ67Wl9hsNWVNWLhGwwqQvOLNU+/kitpOP5EcqZQGCqv/ZGZ1NU0/G+dyLuLdP0DJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GXCh/ax4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Av1x1E3p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DH7mG51121510
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:28:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OfKjFtHX6I3K9cKNlKcgeUA6
	KnuB1sEGdEAkmGkuR+g=; b=GXCh/ax47mNvezWB/+J3WQUnUQo/MjNqM1i3UwI9
	dtr0QX0UKie3aRN0OuloHoTch0+HQPcTCBvGlbOsw3QW6ky/BervRxScNzyI6liI
	Cxg5pAB6wkZDIoKa+lGlZ89SxwxjQkmJCY5U7JN/6GRsfa8siMSk3rk/kZSy0GA7
	ebzFvlKcNlfBrk3RxE+BI4nY+AQkMYjg0Rvew1Jlzbn7lvxJbIfneMpT/z5j7lMS
	LohOGsFktdciYYbjfdyA1nR49eY4aOmQDOBVU7uxwKsH4i/kGFv1JwdRAoBukVHc
	P9aRKFJuAUcIhbLLnK3wBlsTLtkmLFkj1gIt8CKaCjcuFw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnt63rg5t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:28:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52bb3ac7bso106088185a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768332510; x=1768937310; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OfKjFtHX6I3K9cKNlKcgeUA6KnuB1sEGdEAkmGkuR+g=;
        b=Av1x1E3p1ka2elH7BK+cMR+Ot4sGs8JO5fqfse5yZiELVc1/IJrTEaEKHYqGmIb3CQ
         SEOiH9+ODkKfIROIPp7beGm0A9eUoeivZfz+OqkALuJDbPot2Vvd5WxeS5F8OKwEzp1f
         Q9MQ+miGrDPQz1nmSUg+DkWkZ4G+BmvJKFCbti3MMmqRLQfLGFBoBvExMmosU0rDhvwm
         yM2Gkx8iAIY0HEyuCPFESK1L7HpdT3HETzSsczi2/EIe+xN0awGaMbHYos4ZB8zh1GN7
         KD+4PlgyKchLZqIu4CwkOWs9/AF/SRSmN4Sf37Ebmg8JrXEj22BximUgJTHZLR8TuFdE
         dqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768332510; x=1768937310;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OfKjFtHX6I3K9cKNlKcgeUA6KnuB1sEGdEAkmGkuR+g=;
        b=sy/8BduUlkmxYyyQFMoc1x1G5BAj0LZ5cupKk56/xbpvQKEbwijnaO78/jkt4u2LVT
         j4/sGo6v5RgZWhv0eg1LZic9hcQjNYSUIh1NEuHSnsdViYpF6dv07miJkbODFTLOojF3
         SXOXIeN8MB+OILOBVpf8nMxOHt3l8vzWJiSWrrwgGEYbeFf27ZMguIz4R8NiCvv2ZkNh
         uwVYJn5Q70F3Fzc/QkI2/WjNzJ1w0aadiZ4DgYUmsmXYZSw9wXPwp88mbSmX9woqcNlO
         k+s9gy13tvBrIX3LboO+ISqXYdWO7xDSmqeNvtCvhoRd+nxNB6+0N8ic3mZVec8fyOec
         ybCQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3+Wfx1607lfp1jAeV9S7cPRJuGilcyeXiWg9pAHJAPYS2NLnbbc1spR9U9TcvcagECGStyiTVfC5f@vger.kernel.org
X-Gm-Message-State: AOJu0YyFkmXrCJMTpvG1C2jOUbWuPmcmx6ibBILMe5/YT5RuOLm925ZF
	3ZJx/rThVE6YztDtLYvGN9MTD1kMr69UJDn4irzbiaWiwRvMhkqpu1LHyMsIXs2RsqU4PbvvdSk
	z8taTSdq2jW4GAYUKuXrb/0z1oAQda/KFBdnZhyzfXy330OguvDhHhnAouuewOgaN
X-Gm-Gg: AY/fxX4fqVN4LunFHZqakXoTnl9DBf5DMO2a34RiTYJoUjFnoiVE8ZTmppvEeMXSpZc
	J0AIHoGPitkElXau+Ch+g52KsSxjTPt6xOJYew0qeLcUngpbelgGSIPnKSb9tTEcShU8so5rEi1
	LuKL405w4s42NaPsv4CLhLLnSNHuJee/W/MYvjqrpfE6K9IsiG95prj5v1AfRVM7u92Jr8CfEKq
	dUPz9dJTH6ZaUdange6UYqkEpeKaiWsfCfwIWEcJ7B1fr9dota/+zr0cWNYE7u7rAqXo47zNcM2
	dwDurkXU/4Bbo4O6NVok/et+rAqjOIrKvZSh8V2iBJjy0EVoY9z0/M3c7Shf1Bt1SSFQs/iKzqA
	+OSwK95ZOU8vvD13GgTcKGS+10mXpz87DrQC4b+Pa1G/ZfMKlCio4AvqZ+iqyYzuxwXd3OI95UD
	S9Bosvc//D7jJKDZoFg/vA2IE=
X-Received: by 2002:a05:620a:489b:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c52fb236e8mr46319085a.14.1768332510280;
        Tue, 13 Jan 2026 11:28:30 -0800 (PST)
X-Received: by 2002:a05:620a:489b:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c52fb236e8mr46316885a.14.1768332509815;
        Tue, 13 Jan 2026 11:28:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b669418b6sm5769427e87.20.2026.01.13.11.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:28:29 -0800 (PST)
Date: Tue, 13 Jan 2026 21:28:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yedaya.ka@gmail.com
Cc: SzczurekYT <szczurek@szczurek.yt>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/3] drivers: input: touchscreen: edt-ft5x06: Add
 FocalTech FT3518
Message-ID: <o4eu2db3y3wrxaxtxcbxupdc2tzemqvb4fupwfkjfjqmy5qudd@v4umeav2oib2>
References: <20260113-touchscreen-patches-v1-0-a10957f32dd8@gmail.com>
 <20260113-touchscreen-patches-v1-2-a10957f32dd8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-touchscreen-patches-v1-2-a10957f32dd8@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE2MiBTYWx0ZWRfXxa7FJ5OeS5Lo
 6hZ1B9ipSzVC6pwEcShjB/GhM+VhIQjyYgJwo+wcChKKiYhaovAUcYmrJmE/YsKUkeZnGZQDmSU
 +3LtvrOi+1gKs7t6YZBJsY1KHiCUVg6cwgj0JvB0Kxz5SLqrnGrLasVEq8LDp/TrEF1wBZi/cBX
 fEbjYgpg3YHKKiJDM7nmcgG5Hb7hwVb9WNTbCjWxZ0sqYvYIxb7N4PZophJEnCLNoJwbLyBuxwT
 AlOvwm2Jo/kwuGxChBQfJWkQtwC7casKV11KnrSl85RqH78buGPSkOUImZS9weFYMdp0SwKQNH4
 4X1p/a2AwSy2nu6Mzo3/Ai+ujFL2cv5gjeMIcE5vnTgblyA6maNLjhz6mPbGkn7g8GfCYE6lcbT
 HOJyzacgm12QF1tghDcpzmcRbJVP4OY7RjK/2vv/2sbAW9SlUWlFuop7q0JlLWNKPv9WxMXAWaU
 /iMdrHtoNEOtrfpE9FA==
X-Proofpoint-ORIG-GUID: OMSFL-jFLicc5EG-BnSFC-RdS-EcYeSa
X-Proofpoint-GUID: OMSFL-jFLicc5EG-BnSFC-RdS-EcYeSa
X-Authority-Analysis: v=2.4 cv=EujfbCcA c=1 sm=1 tr=0 ts=69669cdf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=ECEyCYeL1hbWFqLZ0VkA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130162

On Tue, Jan 13, 2026 at 09:12:36PM +0200, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> The driver also works with FT3518, which supports up to 10 touch points.
>  Add compatible data for it.
> 
> Co-developed-by: SzczurekYT <szczurek@szczurek.yt>
> Signed-off-by: SzczurekYT <szczurek@szczurek.yt>

This doesn't look like a name.

> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  drivers/input/touchscreen/edt-ft5x06.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

-- 
With best wishes
Dmitry

