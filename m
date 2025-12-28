Return-Path: <devicetree+bounces-249914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8D9CE039B
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 01:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C94F3014AD9
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 00:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE9D1E7C34;
	Sun, 28 Dec 2025 00:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GypzUtGX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F/yKO8dY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B5613C918
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 00:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766882291; cv=none; b=s2yuXUV/tGthrfn7cumYNTHMsb7a86mZUjwpPo78i3CV+TWMVLl4eV3n9cXeHbKww9Vo+9itWTcwr1t22X2HiKMUh07mhXbZNZLEeJUyTQ639FQ9TRCTVcNcHSRcMz1jIWYDiK0DDWmz5b1okkxMkpOejHF+CNEJjE7im2P/FYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766882291; c=relaxed/simple;
	bh=KltGxXX97LmJ5P5GtnhK9RsKVIbBn5KUNEG3V2YDrnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lmjA4q8L/r5ThrI9gssIpu+JCOPNgBGDh+UUttlM1bgKZuIhTQA3K2qOD3vpFuX+nwDAsmXcL12mSqPxaVnxSGC3+A64TRI4aw+BHus4vdqUB9X2CMKV1qBesjqFx17spJO8er/vq3Dyd8/laDx+hHe6nJPcv8yfvQthk0wozEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GypzUtGX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F/yKO8dY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS0OiCS1571443
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 00:38:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7EkANEqa3SI4bBEeuMLrztjO
	HQ4IuumG4EM5qbnQwaU=; b=GypzUtGXZjQSavQQ0BE7Oto/cT9Sqkkrl+3R6pwZ
	HJfUKyEWlDkl6rmwIlVMg1j18+wB2MvHN6V6f1sjrxW1Lf63yvHqe+aH/lppsHnP
	00QwT872JjNaXHgZOZWIMEXKzEE8peO/ly+2m2pP9OWaoLfwss9jO2+WPEyXnOR4
	kXuMJzEmSn8j8qAG0idA6k2qi59BnBJRm+4mJii21jSP+cK37JcUTx0M4M3yhtjQ
	ZeniKD+o9rIIOeCpkiW9vwDtHLQgHz98XzX+O8nstwdhd/mQcblZHJAXGbm4nqRi
	d4tuQOfPyxTYQw2SGKkx3Gi1QuXSTlqDjVLWweLg+bK0qQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5haag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 00:38:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0488e746so180200261cf.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 16:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766882288; x=1767487088; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7EkANEqa3SI4bBEeuMLrztjOHQ4IuumG4EM5qbnQwaU=;
        b=F/yKO8dYhHMGPl4+BNWk42QVbK+pclAG5tq7VqZVlE5B4aiyWX9h2qWU181ArftQ9S
         Mllq+jrf3ql4eeZyB6q+QNczlGjrE4vVZG3Yz/EHSeaiaVrvYgPB9OhjEQ41uvK+z3oD
         qUtqaA0MH2BrIV4j3nUA0Txq+cuDR2KahNGHKLbReHlcB2nfn2cHNTyfcxQO4FqLz+4G
         qDV2/fP2wvv7O/Im/FebVO44/5fOoIG+Vkcul8qeNxDzOf3l96Y+XnD/RaIM7mlNVJsi
         Hsa0dhN/q1KO8gbr6oTl8lAXSl9EW+TLOM2vbe9QxKLs93zd9yXiPH6lKQcqkPbZWrDT
         a8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766882288; x=1767487088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7EkANEqa3SI4bBEeuMLrztjOHQ4IuumG4EM5qbnQwaU=;
        b=kuiFHLeHgU2tWZ6tCUJqwO7C/lJUFyBoqM450tuyXIF/oTA/dEednzMHxPXdpemGms
         KRgVJjeNYcMNW3lFRbj4Am1MgG9Sj74iEpwolGlDPe1LL14vzaj6cUpUwuAef2G78Qf1
         lFZ3dcDCNd7NxRbI/6rLh8SfbzFobOSCFamvhgTw95u/Dihw0duXPRRunqdIgoO3wqkK
         nmq0vORnPezeTA0niGaNnDE3ZOHdndByNk38iyANk+kElYdK9WEVqVAQ7GgvRuAQLH5O
         PRcvJND0um8SbQ7aTQQ+YlIj5dz1Wh+Njjl+pwOUA54F/1JZXwFSJPf4SzdVlOboM1MB
         tEPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX9l9uFrN81f6qHdarGHaseatzbRwKuAzKunMnJecbnVWI+zui3enGsRCsnBR3lITp8qPLJV+by3+g@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ46XWkoY0MmqGa290bPsOHmaFdIv7HV27hGFnasWQIWb0Gihs
	ekPnUt6kFoWkesReWdvDqC5kQnOEVBQJASga7il2xRbY34GFH6M2Uoc+yAngFXR0BREUluXm+oY
	EhA1x9N7Vmjjl10fVOq4bOyO/6qZR12LjQSOPY3jg3OXIiYZ9jtZlnROzEQc36UAX
X-Gm-Gg: AY/fxX5iki8S4ACvCY3vDpa79ERs/OpP7FcEpaokR5DrFWJDl6aDuQpAxK6j1YeBqAX
	Qm4AkcGJeQIF42A7i+gSvuEmN1I2SWOhsHLjrO0DfZ0Atu6pH+i1GOc70SmNdb6r9fHIx4qpf8n
	jt9v7ptTqHIKG7+kpTU2EtJRs3YHr/Az0q9KvZ0XiibaCzjC91rXrZaOUoKJOT7aih1O0P6lx1j
	5TjlocComXWY9ZOzuYJDFu+P9XkHXWBCx11svO3fzH2CC1fVnHU1fMgxddn+YQSetQc+Za+OBnI
	gx04Uj9UG+Df/I/DFDGPuo9rgH3E7lpQCRe7FQP9ah/2n08UXLcTT0UV318lP4Lxv+mtKoOQicf
	BDpYkgLqZmXHF6lh4UjxLwLy1P6uGsXaxdPOJ70gWduQxm+PrXn4ojbjJC0hlhGruX8mA5XJVR/
	YM3CIKbfSyQ/eR+CRI4NlVZls=
X-Received: by 2002:a05:622a:344:b0:4f1:c1fe:ba3d with SMTP id d75a77b69052e-4f35f3a0de5mr447798491cf.7.1766882288038;
        Sat, 27 Dec 2025 16:38:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEw56X043CuMlkSOkiOcyKOJTAC41kaY6yO24gyXc8BLNaSFbhNxi8o7Exf1VHwicGAOqkK6Q==
X-Received: by 2002:a05:622a:344:b0:4f1:c1fe:ba3d with SMTP id d75a77b69052e-4f35f3a0de5mr447798341cf.7.1766882287646;
        Sat, 27 Dec 2025 16:38:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f4d9sm7639400e87.78.2025.12.27.16.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 16:38:05 -0800 (PST)
Date: Sun, 28 Dec 2025 02:38:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: msm8994-octagon: Fix Analog Devices
 vendor prefix of AD7147
Message-ID: <7zg6ubizzaf3sp2qat7vp7miqw4ukajzbuupvqg3fzrnf7ltbm@kteec7xpdmrj>
References: <20251226003923.3341904-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251226003923.3341904-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-GUID: 3_yy6OLO7YZVmCaDelhKZ4kLVQWQKTje
X-Proofpoint-ORIG-GUID: 3_yy6OLO7YZVmCaDelhKZ4kLVQWQKTje
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDAwMyBTYWx0ZWRfX0+P5xG7fasz4
 kQe/DFUJPyL6qEUzQ0sMSCQkmhDXIbd61D033GCpoEeyOcO8kCFKHNjSRRDQNvz8s+Iq34iCFvD
 SXWG4INgtruDJV1k3Z3bd2ZkrJa0m//IuzKWIRZkjVPxEb5ArXsOgYX/a2R4Yyn1WlpkICu1oFB
 k03urRWD6zwl2MhmHZzAwwZ+B3/e6HDtMY9PgDgQM+6qBQU4XDg02NWAqoXh3e3ce4e/VcwIgCt
 NYwPTpUV/fO+ZZVinFZY50FbOIpGIvysTF/UpUvGALXMkj8kcuFUTHQKVXF7HBhDkpx3TI6/j5p
 EViYQ3bvoRa4gdGSjPAUTTbe/MqlV6meeYxad9b506RsJ3eH1/O6XIA8nosqFrPIDDPa6djvgYZ
 pMeZZi7HfmZVghmZrLV2Ubue9myMwzF4PjvaSYpi8TANYM3CFbsnGMVALxTJo2q0Ojq/M3hIWGz
 8s4hRjiA/FLlkbLmviw==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=69507bf0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=B06sBngV3pgDXdJ4Du0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_06,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280003

On Fri, Dec 26, 2025 at 02:39:23AM +0200, Vladimir Zapolskiy wrote:
> Trivial change, Analog Devices vendor prefix is "adi", but there is
> a valid "ad" vendor prefix of another company, this may explain why
> the issue hasn't been discovered by the automatic tests.
> 
> A problem of not described compatible value is out of this change scope.
> 
> Fixes: c636eeb751f6 ("arm64: dts: qcom: msm8994-octagon: Add AD7147 and APDS9930 sensors")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

