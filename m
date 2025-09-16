Return-Path: <devicetree+bounces-217771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A62B59304
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:11:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00A29165E15
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 246A32F8BC4;
	Tue, 16 Sep 2025 10:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EdT9uVlZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C232F8BFF
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017460; cv=none; b=T95YVI0pZKf2PMN3jDgsrbSR0DIE1gpXLF2DxzJOua2rQwh4ZbNToMVidd4m8p3SDdCWuyQlA/Da1sPoKQwz530l1w68lJE7DAXwv0kyuAkbjUetmWpB4JdZ/Dk5TiLDGwsPrDC8IzBCuh48Ly5A056FHYufi3vyXPTVVOnunXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017460; c=relaxed/simple;
	bh=N5w9sGR83HmehQkzcyb3yU5XfW4ZSkbi04N9GlT0S40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mUKehYnyES5bTUs/POlDHMmxqVNcQ0uOHgzBjsDjzsKI/51wJNh3kudXyzociQibo2TYSx7TUoNGxihevpbR5t042C6Jqso/ErvY1xInzACkU2grSZtA60Rkaz9Rq0iihuaj0lYP0fecj7yNEDuD15vpGVSdINu/F6JnegEjvs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EdT9uVlZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3pjpQ001630
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+Hr4QdaTngAzxON61S7ZU7L2
	1S4tZidHsM1IVv627kU=; b=EdT9uVlZ2cSqy652445IPY2VKG5O2/fIqWkQbY4e
	KkbBdgx0z4eg53VGih4iSDA07ocV4pP9X1t4gXzceD6ep6A24sQ2ua4FCdElIqCd
	oI5p2NmlHN/7YxonShTpC2dVeBzzUpzdNDrQc6yWaYCiL/pW/Tp7Yrc0j7iCfZVJ
	4K4r9EitS3Fr8NK8SiUrltEZX5y3wwi7eneVDgsD+lwKy7GQ4hhYLjtFDn60yenp
	Ele1bvwS+CoqjkZ5ZLp3cZPlzzkSdXkZToPNd14yzmkXf7Bnm8AFmZgMQI/rYl6Z
	xtPgJbrdl2kX31QYTXazJ0h1vnoBfcN3Esnrtf+gAaHEzA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpyeqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f290579aso108701711cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:10:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017456; x=1758622256;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Hr4QdaTngAzxON61S7ZU7L21S4tZidHsM1IVv627kU=;
        b=VF2jiX3jX2XO920OKEt5KTyjCNTkZWpm2y52QHJRWt5YDnhWs+tflVGUEq18+hlxni
         iBuf4xiBypT5APX2TOybePmu0+BmoXs3I1mpbDDMqBibHvU4RZN7fjLTKLOyaj3OWAjE
         VtgyH2D1mM/Wd1CIdobDintwb9N1vaJSED+z8nxgW8NhEavk+c4e9NVq/Y0+FPhInw9D
         GPg0fwXZtgu8GXdrMIwz5k0/D5q4mX3BVvIslBuDslVI7Xuuc5k6AaUbktODr9Y/8xpR
         SatUnetEtuT3fJEGiJwx3G3wg7Z7WZ/fhoo7V6MeokgVQE/bZstZ4dzb6Vb0TMKzH7Kt
         tY7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUyRlz4yvFrAJp9tEsmIiaxdpOP3zetuS/+uzBb58GyPjkrKjCzT8exUXacbNa+Iqaging4q5eAKdmo@vger.kernel.org
X-Gm-Message-State: AOJu0YzzYL2y0rWswXxPfyhEtvZj8taLWsJ6flaeWwsNOAw+JXdOok3s
	rO74yOeisqueyj7wo8J4UpwW1ZYeFbEvL85UMvmxkNeYVRxlLD0KF4cWgNx884Gc9fY0xwB0gtZ
	DpmP3VVa0vF1bANVjRree31UjTeXNIhKhuqA+/nWGhIfVkZIjamfF9H9+uqSJnGjr
X-Gm-Gg: ASbGncukyWLEdjBrsg3RxX7twZP7lp5m+C87RaxY40CGQVlynzPXOW6pPL2/vrg1rmF
	FQLAwuqlRI8ZuYxS0WcuKiRPIebx1MB1JMazd9KMzhbMDTtK4DntIAFAtseH6HJ2NQS7xp4Av0C
	xG4HKsl/JSJiR5H3eucLsjBPIvD3xuOai9rkYk/maodGrZHEgto0MKylMtU5c/lxYX840HKQvez
	H0ekTUXxSCnz/rflxu2OioaLzampNIwfVtzjgmPIkHByqHJB4lLJO5voQl0UL04ygqx6UEJRfgD
	KMzD8Xntva4VNxRE4Y8d4ovqe3H8cLapO279WIPzzv6XK4XFhet6naKQCP5k8XK/zEag3DdXQyj
	y35cnEMWYk4MkS+Qkd+cYtm7AOtK5dQHmPmjKY3EyDc2CBziNMDPV
X-Received: by 2002:ac8:59c5:0:b0:4b4:8eb7:a45e with SMTP id d75a77b69052e-4b77cfd7c3bmr187847011cf.35.1758017456300;
        Tue, 16 Sep 2025 03:10:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYmRtvb+l0jlW/S7lOSeC4zeZd7f9A/J0FIqtj2p1keSF3dZBC3idnn20IpIn9AtMWbRfH7w==
X-Received: by 2002:ac8:59c5:0:b0:4b4:8eb7:a45e with SMTP id d75a77b69052e-4b77cfd7c3bmr187846561cf.35.1758017455741;
        Tue, 16 Sep 2025 03:10:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5d8c4783sm4320157e87.56.2025.09.16.03.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:10:54 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:10:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm6350: Add OPP table support to
 UFSHC
Message-ID: <tzdnkjnq55ea7u7wqjvn6kzaobau6blnambiass3y6wezqgshs@otgiuusykcrz>
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
X-Proofpoint-GUID: yY37jr1g9PKqT3mORGQapjXiFyzlLYvU
X-Proofpoint-ORIG-GUID: yY37jr1g9PKqT3mORGQapjXiFyzlLYvU
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c937b1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=m3AVSQT7pDQk2eD9g64A:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX2BIcvf4vaGMD
 0FX5u7RzQQs8qVUihL/CeaqxrzdFXCbcl/PLOOMR3qOdYyr7ufEx6smQaTz0zykHa5vl9nYqE65
 NOiWJUGo75/jJCyFANtiUf5fL+/biFQQrNB8W6/+6sOf8mQL1I+hYCtJ5oLie3EgWh5LCmawTir
 lDQmiaujP8pr7UIeX3/44DnufAq2G5qN/6SZDoP9eo4NW3KkiBkUMhijC6vaaWP6/jLMVz5gYoF
 9//Cd1ZU4IK7CiKRXFp6C/ijBn0vBGgabKQe+23qrKmZPSGvbM5H9M9TR+pGAa5VHuyyalHBnjX
 /WY6zgMJEMTqJu8eXsE5qs5d3VLUN86uokaajHvzzC6jXltjAXBFO0NZsvh7uPbN2UYLGbvcMCQ
 B5fvpL2u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Fri, Mar 14, 2025 at 10:17:03AM +0100, Luca Weiss wrote:
> UFS host controller, when scaling gears, should choose appropriate
> performance state of RPMh power domain controller along with clock
> frequency. So let's add the OPP table support to specify both clock
> frequency and RPMh performance states replacing the old "freq-table-hz"
> property.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 42 +++++++++++++++++++++++++++---------
>  1 file changed, 32 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

