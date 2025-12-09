Return-Path: <devicetree+bounces-245329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FF5CAF37A
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42C19303DD1A
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CE829D280;
	Tue,  9 Dec 2025 07:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EcTakGmY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PzhM34Dn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA52426F295
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765266729; cv=none; b=j/zNH3ZNlSeRTI7H39umqV1iOdU/YygyKi6AoQJ4aXbIvSDG8oHKEZsHyQ3Vr+9t+XX5MSBQcFHuCO5hzjMhBGU7tWZWXk7mxKxIKZ+lZDLbFK70AepJe2Vyv1WgxgQaIYf4Ixox77xq2dzNAQKhzm70Gqlro0sdx8j5grUB+2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765266729; c=relaxed/simple;
	bh=Jo0KNwOuAvHZHm3ybRcsjpTi+h+SM2mwW/Q5Id5nh+g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n4PWWljiq7vZIW3Bk1j1Pzc/zKpm8DRvFi3i8Aa0GonB2TbS9DQ56o3WoK2yJ6f60ztERtsiA8mo+lMAvxOmI/DjMHHSUkrm1unjWkcQydhVFNO/Wgqfa5jDc6sI67BWY6eu4XIGkj38/o0KZHbp2CgF5CGuBqCNOQ88trIZDNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EcTakGmY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PzhM34Dn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NXCHS1853431
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 07:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=thXUIE0ypDaz2hZFVr0gvvZE
	oNAbwUD76GBmxiIRQ/w=; b=EcTakGmYoOm4/AC2Xcvid9GZCIx+DuVjCuLqrJTs
	mtGu3+g1wXCr1vTY+xLqLX++kU5/r9bMLgZVyPirb3V5+t09TYIPIBBhDjsqphiO
	DXOjRq2pWRvE9BB3XHBVFmXBT6yYPVqZt1Ojaz4wQq9x6oSTgYYS85xc68mNE8bn
	fBrtR/BItB7tnQQTx2PLGjn+4iS89TL90UK4fbA3jYOxkJ3Mw3qtor+0hQfpW6zR
	U+muVuaGrlTqU47Y047TGMmwo99xefti1ZcqHTkmcRlSx4vf7tOYCCYRXOpbCYSI
	DpXxyBh5pzw8UXa3wRc6URyYcCOZPnt+cPW6RARU4oc87w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax63v9j6s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:52:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6e701d26so114784071cf.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765266725; x=1765871525; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=thXUIE0ypDaz2hZFVr0gvvZEoNAbwUD76GBmxiIRQ/w=;
        b=PzhM34Dn9eTWgzMytRQ/YI+EYHTfD4ikUa1nt0Z4OXe/WiKjVYkzKiBvxsVuv7amf1
         R3R1brQZ3f4P52Q+VZzvv8DXosFoG3GvtmzQEdOHdGP6CBhDBL0OrYGg4LoFmeMzhhgf
         uRizVb69Qbnodq2atEhYCJ4BLtVJdWc4bpK7AHP2QKfnFKYX97O/zenPcINsQd/MHQy8
         vDTrCyKPeWZ2U+X4lb72OQxTacCs63b3gko7o8zCQd4lmEPwH8o4Jb1x4bHnuRT5FQqC
         bRb2xU/RHWENZxF9+wcMIXHhULM2wq5+XghK7MTG9+NeVUp9o5JwePcCOcJ6yj6+fN7s
         p5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765266725; x=1765871525;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thXUIE0ypDaz2hZFVr0gvvZEoNAbwUD76GBmxiIRQ/w=;
        b=IhHsPMqTQTtJ1a6VhSl/VlEFddwzjlc/1s3uWlOg5UUtvy3ijbMDt7e+egwp2Zit+D
         gfZ8RTshe9YfVloY3vLvH5ammbt7oRsr0R7IlMCI8aihK7smeyvD9DTymdtCyEaiUb9W
         05kZebxJ1IkI/0HV63obNlcWWMaAyshIo7vciOuRPhLrni1q4MbAFCze7K+oGp/QDh8A
         +tvBjd2iUgYrlX1XoGMoPV26AF7qXyXJBdXJID8Xdz0Bc0/jqxXcRLmPD9q/M28sigTQ
         c6BEzXiTO5uRpRSLGfuZXPrT2egs24x5rx0Xa2kDrzPHLY7K6VipTaR9qLxGnytt7rZb
         vLow==
X-Forwarded-Encrypted: i=1; AJvYcCVj6iAot8V7T4A9d3XP7Fj/hGLGrsFCLUVGErRXywHRsOTMEVTKuA3qsANuco2pWABVKd+bLGUQSo8C@vger.kernel.org
X-Gm-Message-State: AOJu0YxW1FhjV7XKS5n7EDUQ/G9vKOnV/eQSKzIbRBpj5fAAT19FaVeV
	KXkjEZpeekIl5SmbJCGg07TP8dzJC1+KQ1DZJ90psjRv2WbQ2J2pWkCymXshR79ufRCoNHLxe66
	1s9+5sYWPhatQ8EESwR5swQjfBQ9Ou1kN7RVj38NzRGza9t6HXuxDz7AIE92aDXEH
X-Gm-Gg: ASbGncuG8r7AXItlyGEih4YQYE4WEwifsIo5Q4Z8qJj3d6qtWmzAFTDjZtrk2z7r4ce
	bMOOYBu+GGr9AtzxOGqjmr6qtEs9nhhuTHk3YfK7OiOOTlXBxADz6Vey+dL+iGybnMuXbwxRLUR
	LaLV2dteFXqFPMqSc7FsTcuFqAKs+hGzNo1gFagw63R3pflcFWAAFSWl27M1qPoM3KqAhvBbUj2
	tK4oEXwkru2wcI3knvwMGVRZXJIYjVhUJ3dlYk1HcYrewi0O2UMHcIrgXQCTrCYlt0L1drYsdR2
	kTqLg0nAGeJ7nj/bmjY2c77V0pcBxR/4NsteuurBp/u1EE2ZkIzlNimDX9XjjYsPRtakEBDg9i/
	b1NTJz92n7C275XjhVyONLphtIMVNMBQkcEZHqYlLsdUm2uCMBJm5a6Me9FjeEOYElcaag7d0DU
	a0lE3cHlfrdNe10X1ioMHsoYM=
X-Received: by 2002:a05:622a:28f:b0:4ec:ef6e:585 with SMTP id d75a77b69052e-4f03ff24e98mr159755751cf.73.1765266724888;
        Mon, 08 Dec 2025 23:52:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDUM5l8kB+uO6MkZ6BGAVtrP1ecLHKzFiBvLvOe3sQnwHX62o4yX9FUqygySyscF4j8ToQww==
X-Received: by 2002:a05:622a:28f:b0:4ec:ef6e:585 with SMTP id d75a77b69052e-4f03ff24e98mr159755541cf.73.1765266724451;
        Mon, 08 Dec 2025 23:52:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2a1sm4970743e87.64.2025.12.08.23.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 23:52:03 -0800 (PST)
Date: Tue, 9 Dec 2025 09:52:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator
 support for Type-A ports
Message-ID: <6awlcjah2ajwzxzdvoch5e3vn2ztvxyjdbikffhp6efti3f4wt@swhugoqsmf6z>
References: <20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dKarWeZb c=1 sm=1 tr=0 ts=6937d525 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=VfrTVM5IFoUUBtdl8jsA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 0_yis09Wad28q-plsbSepzovRS46in_f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDA1OCBTYWx0ZWRfXzcWxZYNYuxC0
 89QuVKMxpeCSEROI1vE/xUBALU+81ZePi3pIzhrGDvDQ+fkOWwayX5USMuu3XO7Rt/DfwZ95WIb
 78nau/fmGRgBfjQE2LlVqss5AVH/kT04II1RTo6zqaJCfBPKTxZEqA2BTuNdKzqvQ9VwSxGWMPD
 S0maogWPdFflUOuhZSoaAryEeIGocEncz9+AQ9jIGQzuFgrcqhRUMC6eF61HNnBi4ahfOhs1ujt
 45o9yUUTkR1TFC3eTkNZMe8qRafZkgGIf9a/QlFjkrxo5+OYlWfG0iTQ0JJwUXChCDBvBrb+QUl
 vf5aI7gapf3btuW9dn3fYyd1afLxKIp19X8WZ9gCTeDexcfugYwJ18eZpYNaP6YbefVYjx5WqHd
 /HvXYcef5khwhhiVsH90M6tACmmUpQ==
X-Proofpoint-GUID: 0_yis09Wad28q-plsbSepzovRS46in_f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_01,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090058

On Tue, Dec 09, 2025 at 09:47:01AM +0530, Krishna Kurapati wrote:
> The Multiport controller on Hamoa EVK platform is connected to Two Type-A
> ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
> regulator, controlled from PMIC GPIOs.
> 
> Add the necessary regulators and GPIO configuration to power these.

Should this also include corresponding USB-A connector devices? See
qcs6490-radxa-dragon-q6a.dts for the example of how to describe them.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Changes in v2:
> - Re-ordered nodes to be in sorted order.
> 
> Link to v1:
> https://lore.kernel.org/all/20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com/
> 
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

-- 
With best wishes
Dmitry

