Return-Path: <devicetree+bounces-256185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B5354D336F5
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B67830039D4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4832C32C333;
	Fri, 16 Jan 2026 16:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kelv5i2s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AA7o16eZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5285E344039
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580272; cv=none; b=HxzELxwAh9mwHweZq9bpL+jZAgM4YMGZjXyt4NIJ+2W3chxdMxXv98IwsAhghIMLMI9FBMHztlVkdSFx8MgdtHJPQ0Sh3kURDtX700GKVrFcLlCoSbs1PBwYdQ1uCMm9cXyHzUwx3LzenBv9xSQpQYjzN7M2EuPG78Wd0AUfpTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580272; c=relaxed/simple;
	bh=t4DdEKOjKr5dZLG+sJfzEP6TLG4Y4Vq9SxKsjXOGJgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DdMWwGt6DpHbqRW7VIaagToKimHs0VLrqE8m1CdXn7fTwvKN4mCdNCxaiON8fPB1Zmt3IHZL33lTg8cmFulqOej5PPdMI53nzZ7Cdul9jJJEx84/dL3xMNQEcC5EX44hgoaHYsmHVHM+3avp9rjYbKkxts2CnfmCV4t4DWUQh7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kelv5i2s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AA7o16eZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GDZnxQ1196410
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:17:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qRBKaI+EKDVBkTuqo23SHS6X
	KkoGrdZE7L9T8y7lLgw=; b=kelv5i2sxLwXPpAudR88SFcZoC0Aa0L52TbAQaaJ
	PcrzNlAD9/shTsZqyOo2mzm7wYeUFVruC+N+zYZ34UHHcMoWbh0JEdjfU2EAaEht
	QqWDpl5Xfz2ghz5Xcv2DHqO83DIUcMyCSXDNfz5xNrPwkySuw92GNc1axOS8dZKH
	onKRcaKxcd9Bysp18uDwX3MDvI7IwRu0vsN43dH81HbzUwprW02TT5DRdQguSMpY
	rzrkwTXAWvzaiFlc5sRvrrvgTc5auG6F9tSCAYCQAuR7a7mMcT2L0L/KXOWUY5x5
	4HEWQY0A2oajbPl4/coXPgr3aywnLSjwxrmFyZ2w7n8Peg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bqpbr0fag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:17:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8ba026720eeso655341885a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768580268; x=1769185068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qRBKaI+EKDVBkTuqo23SHS6XKkoGrdZE7L9T8y7lLgw=;
        b=AA7o16eZMTFGIVPKiQEJMqBWoZGiX62B0+sFMCoCJxSsNMvI/yvVoEQkBX9piRKJL4
         QE3bS56J+jJbK5zeGglin+NQx2idYHMLpkxmpoRs5WrVX9LIaPcs9ubKoHjXd8Ht3rLd
         HOHnJM6PUwYvtoSzip5ikiqb4WkcoSa+J4azA3MkMi8TreWe3zRx8JIjDyBjwH85lziE
         iYxQSqrj6XkZurD9SCXilUvl+H8ABY2D5O6RDEyZYEjfQbUv1Iu78TKPopkSXXd/lBjQ
         Uh3icybvI/Zj+X36eZZQe6g7Bjfzv+UPYM3SrX3ZdcXNWxbtIuUggnbJm9AU8sidJlEd
         4OLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768580268; x=1769185068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qRBKaI+EKDVBkTuqo23SHS6XKkoGrdZE7L9T8y7lLgw=;
        b=iLUpHa3/FWjzF6Tic8SOlgBRCl/XIvLIz4S2ruN922o42T8IeU2XqbWYxfS7qRRvvf
         75WQEb7CQcogjUgEJalLAryJ1HnHVFyXyx7q5jHTYlwBeO5qiDprc9vKODMy6XULE2OO
         iKTglLSObpvYC+71qPC12d0Hy231xmqmWZQwugkcn1Ydpf/KdDUTmKXN5miLthQZgt0m
         r7BJUmlUm1J7HaIshEDVemQVD+PmWxhsAZ5TZ1pFGM6N9B4FzFcUqwl0f800L1YuSMb/
         DSfw9YksHchK/0GG4xMe0rGq/zk0Uf31J4SK6K/J6ujkc6DeUSU4ze6/GPYR6ZRYbOl7
         Z3Sg==
X-Forwarded-Encrypted: i=1; AJvYcCWYIJ2+Z5m8/ILoV6lJUEu0jlbdrLIBRjumXn5zwAVR1361UTivm2XqWWoibMCsA6L/JTMf1ICNv23+@vger.kernel.org
X-Gm-Message-State: AOJu0YzTzTMLx1bMCDnMem6XAeV56yGy202DbOKmMPapbj7K3lkAJWGR
	OPIB/T0W3mXDzd7WgYmdeWQ412XQa40EjYDdQyPrsYz0t893LBsDmK87tvmZgewRrka2XIVV2J7
	hktoqYw1sZrfIA8yXTxWE+tzmQiXNPDv06dQ8bnd/snTudqdJjGinT9l+aLDjv8oo
X-Gm-Gg: AY/fxX752m1PmWNwfnfylbyYCvCMjr5QeTfi5KML9LRXgDAwI/q1ih+M+quVGNpp+WE
	fr/Tn+JbAypSuXk2FETdcf11t8zlWdtd9shwYd1AHMKLBhrLczjRk0JNJ5mjU8xISkkHUfCbtjZ
	S/MJQTzKsyC8DcJVzwvr7m0oMuWBzm5tXMx6465M0XmO/eLs2ElNibiJh1a+9x9UFxYCTGTdc/t
	oReOl+d/fRUUwdijzfmd4Fcvq3mhPO22EZPYtp5frJ0n2LJKmPXsajLE5q9aVhQkSLg8dWZmGLt
	J7IxhyvsyDt7BrJnE7IwrkOq2j3SqnC61RxvMaJh1KssiMjeanjAHIO2ao1zWhrKsX5nNZSWHIg
	NZpnRx11PVp0azQy9hXSPX7Ykl1QaXmURKZl10ioTCaLlUVyf8k4DHMb5bQ2RiHZxxG+66c4K3n
	2tWiTtq8gnC5ZGgUvpugzPtGg=
X-Received: by 2002:a05:620a:472c:b0:8b3:c8ee:7240 with SMTP id af79cd13be357-8c6a66d21f0mr532696385a.5.1768580268187;
        Fri, 16 Jan 2026 08:17:48 -0800 (PST)
X-Received: by 2002:a05:620a:472c:b0:8b3:c8ee:7240 with SMTP id af79cd13be357-8c6a66d21f0mr532678685a.5.1768580266243;
        Fri, 16 Jan 2026 08:17:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf33ed0asm895490e87.19.2026.01.16.08.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:17:45 -0800 (PST)
Date: Fri, 16 Jan 2026 18:17:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: milos-fairphone-fp6: Enable WiFi
Message-ID: <vpyydkmjvrcp75bjwbjpfcpvaopv45ljlp3tditfh3aifv5cuc@zh5zqfi26vho>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-5-27b4fbb77e9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-5-27b4fbb77e9c@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDExNyBTYWx0ZWRfX25EhyPgGRb2K
 PdENaFkSVx+pKkB+fqHt9egbuHvPeesvzvqWxMChf3Tyyl47FjL7v1X02aP+tmuzNzMfxt3b+Qr
 NEqC4O/m4hqePh2FihaOxQwwvV2xZBT2gBxlL1j18RpLCHEiitJsYVprI/uaD3lL+WwwwlKZ/3x
 LJxzkmt6KwKYouellzB1jPh5s1V5JkPBjvPDvr03j5sVe19IW3qEh+zvFl+zggSubUA8gvLYfF7
 5WNozI5gf5qr9EzFyZJL+vdhV5Yb/Y0Pakj8dnZg0TskoO9E+I4AZUJGEvD7JJy7J4QZra+u4FY
 5lYnH+9aoW5OXhhEx/iagnEPoLiCIjS2HuliGCFdsPUIGxquMLVc/MkQ5KRUK4Vv6bmtrq1Q6+u
 0Tgichb+RsBkjj4P486YHTd+bdN8klL2qZwmTBZjHc4DBD8WX2E3GM4yywDhRo4aWlDKS9iTYkF
 p7jKPywVXKW1nd+gHRQ==
X-Authority-Analysis: v=2.4 cv=dL6rWeZb c=1 sm=1 tr=0 ts=696a64ac cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=Ua5qo8SU9V0ZK8mivTUA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 0njRpCJ8bhMwzc2p8of9_LY7BhkaggUP
X-Proofpoint-ORIG-GUID: 0njRpCJ8bhMwzc2p8of9_LY7BhkaggUP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160117

On Fri, Jan 16, 2026 at 03:50:51PM +0100, Luca Weiss wrote:
> Configure and enable the WiFi node, and add the required pinctrl to
> provide the sleep clock from the PMK8550 (PMK7635) to WCN6755.
> 
> Thanks to Alexander Koskovich for helping with the bringup, adding
> the missing pinctrl to make the WPSS stop crashing.
> 
> Link: https://lore.kernel.org/linux-arm-msm/DBF7OWAWQ94M.FSCP4DPF8ZJY@fairphone.com/
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> @@ -962,3 +973,9 @@ &usb_1_hsphy {
>  
>  	status = "okay";
>  };
> +
> +&wifi {
> +	qcom,calibration-variant = "Fairphone_Gen_6";

With the hope of getting the board data submitted to ath11k@


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +
> +	status = "okay";
> +};
> 
> -- 
> 2.52.0
> 

-- 
With best wishes
Dmitry

