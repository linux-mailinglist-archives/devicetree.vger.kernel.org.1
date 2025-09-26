Return-Path: <devicetree+bounces-221903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D543BA3F0E
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 588F37AA4CD
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9802D13D539;
	Fri, 26 Sep 2025 13:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aHy0mU3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC422AE78
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894575; cv=none; b=quQq+1w6tyny+46jUoFkg/f2RCYehNAayLyL09rWc4CcvkjWC6c/RmDVyden6honJO47cYOlCwGQUlVqx4/7b30YHAVSTPichmvNO6pwAvARR6YRDa6su6clJhgHuVszqX857Td7AN/S5UiaaFAJz3+l9PUwOR/4oaNIEloWdm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894575; c=relaxed/simple;
	bh=Db08r4WBepijoO3oZHfH0NhL640ck+ontuJnpli7CSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dgv+kyaRsIE+BzZjSMuryUYcIEpJEXFzjkDhZLVDGfPELkH4DExLtYX1MOWESDCEZQgLEdFNh/SD3Um0rtswVQZJ+ZOLgyblxAzqzJwTH0EHuiZJKl/n4T7kHceJr2/naOZCtu46+fY1i2FPTOAu12qxKhfuAY/wGsCOFQh79AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aHy0mU3H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8w5JT016544
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:49:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WAJX3xDEN4jUGy3bs9jmN30/
	NVEDxtaS7JRNwdjwUEY=; b=aHy0mU3HhuVKURn/uHzG/RePuy4w7/c1pN1+AzyD
	gUGPrtncdpAOn58KAqdTQdH1XLvdAFF6mGtCPW4ntq0q7vvB+ZyK4xVlKzSV8FvO
	3W5WtOees+o8lFEtHIKnDWiX4INq3GzfTzbLdSKtvmqjjSvQ1JqaChDErbwrlIve
	JtcSXvb2A/BRy8z7lAjQXX3/rq1mjHjucouqrPey5bGcublmXP12aYA1fHE1EBxg
	pECSC0Wl0K4tq04CP6HotXt6pDjU/wCdY06erPyelS4HU0f6eYGMZVv2u9bhE8p0
	C702F6qKhNkDmi1BMHIvFphBfqQZH/NCoTJLM3FMzRgQLg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rk1yj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:49:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d602229d20so38757771cf.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894572; x=1759499372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WAJX3xDEN4jUGy3bs9jmN30/NVEDxtaS7JRNwdjwUEY=;
        b=jUHO1tSE0n5hMhJLkT1pJFweOB4tqI1IDRWrBHIHgphDdA4gtY3qRqN7EMz9uW9pL+
         JbJ/5v4YeDnCZMi8lesU3wJ9SzenLqkb9f5f4rO6oznXTMPaj7+8fAhIwsdrv3Wj8q0v
         OnzYehGVjM3ok1y+dT1Elp/lu2P85Bg9l6Og2ie4oSgY7LZEH7uY3/sO9M7VOq+qbd1a
         0gKCP99A6CtvWEJA9tN8ykn6e3tUKmgU2CTwJcmgrSrlyrX9Z74DrMSqBMdfIc5s90IS
         bpf58H7tzKh0Jlc2uHwpuhueh3at6e5AXmaWaBAQG7X+fYDmzeE4YbEJXjmXIS7PfN7V
         RBhg==
X-Forwarded-Encrypted: i=1; AJvYcCW5G0wz3CmcfrrnoXLd3kUssqwdjjCQvBji7GtdiQsR0Vi2T6ocwx+WGj1tbEPhQGYHNtE5ktVZVXH0@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0yCbY6Z9qThsrkUddeFMGd3KCh+H3C3ugpcDuxMebPvX9NLWd
	0oU3UBku09UPOkFPaKLL+y10dtaZRM7IiSVwtN7Pu3q3evrxvLIg82ncYXuBa1rBwFHlc3X52eX
	AnQzEAZwioU+wPnZAgVmfU166P0mG0DOUwKIZH1XcpKxTCzQwAwvqy+SvRF5wfI/V
X-Gm-Gg: ASbGncsoDYuRubNqxyT+Old7BjOIXPTcFonhA0IWvwu1CFKg4bMABw9StuotNN6JPf/
	B3svjQ/Atwi93ha4/N1s4QAXbnEThCpoQVW0HWyWCYyQyJ4go8ARz2XNj08ZpNrdzSvw/xFdpgn
	ylFIeZuHmhnkLhGCdUEd/HXAocO0Xt4o2ZEtmYiK5eC6jWPhVmshe+BZA2RJoqSzNUJEdwCwWyI
	XNNzLCfcfFbQEecWA9MMherto6nWSERyBJ760Qr8NOYJPum71YwO4u+ZDKJQRelIyeDXzL8QqXV
	rUEO+3KRHhFAt+DvmZTYVlNxWoaNDOZWaqzLJVuPtW2YDhsNufRPBZHbIIji75vniZ+C83U1LJ/
	/BeXaz86TS5Um2sQVtsSl18oIKnPtPl3uRUs6D+kRyF/KoKvoeOA1
X-Received: by 2002:a05:622a:507:b0:4d7:bf73:7644 with SMTP id d75a77b69052e-4da481d8f9amr91206651cf.12.1758894571966;
        Fri, 26 Sep 2025 06:49:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUzL2zGBtiAYNc8MFpZoNaV0hhqhzKYnr3u+gtoMqLy4vqtTE8NEKQG2bMZ9W/WISGzo3mgg==
X-Received: by 2002:a05:622a:507:b0:4d7:bf73:7644 with SMTP id d75a77b69052e-4da481d8f9amr91206161cf.12.1758894571300;
        Fri, 26 Sep 2025 06:49:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583166561c0sm1817869e87.81.2025.09.26.06.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:49:30 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:49:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, kernel@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: pmic: Remove 'allow-set-time'
 property
Message-ID: <s6dqap37vs6ihtsdttvcx6p4sbkbzi5rd4kpa36fwfleei3fss@wdizdscqxfah>
References: <20250926-remove-rtc-allow-set-time-v1-1-76895a666939@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926-remove-rtc-allow-set-time-v1-1-76895a666939@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d699ed cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RuSpVAPlDewHRWl8VpoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: nFRUjephHmlKE0n7qiY5kbDf8toNf8qB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXyBWmv7Jg4PQD
 McMnGxhVxJsfwYCsiwB9qLcuHxzdnc08ZJR9BluAoNYfxWAwgB95hKFBdw4hY12S4Ao48csPh+X
 +FBnBNrNNoWGky/L6GV1TQBqV8pZsyXqkz3hlad5Mecu2zmrYSvjs6H+t9Vb9Nmc9FFQkqHnjgB
 VM2G8f7nnoB/KJi1/Blon6Aqm3+ESW284a8fASmhRiONEgIST31AiU/PaE/JYlxMFQ/uG7OkVK0
 T7w2BgvPYKI9t0n33YufkpqZTsUr+i3Yq2ENNH8pkP/ANxkRLVFdjjuNYbj9f1Dc6e/d2y54F1P
 ytkzquhDSx8mhfb/PWvftQ33b8i6ROOAK3LtyJaEvkCRYafVaadmbo7Qgm7/tif6xWOW6aBHNQS
 0x7/daXkjySA3VXVRADWrVNTgDKpjg==
X-Proofpoint-GUID: nFRUjephHmlKE0n7qiY5kbDf8toNf8qB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Fri, Sep 26, 2025 at 12:09:27PM +0800, Tingguo Cheng wrote:
> Remove the 'allow-set-time' property from the rtc node because APPS
> is prohibited from setting the hardware RTC time.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi b/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
> index a94b0bfa98dc39e41d1a0de3373753953609b95c..e990d7367719beaa9e0cea87d9c183ae18c3ebc8 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-pmics.dtsi
> @@ -18,7 +18,6 @@ pmm8620au_0_rtc: rtc@6100 {
>  			reg = <0x6100>, <0x6200>;
>  			reg-names = "rtc", "alarm";
>  			interrupts = <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
> -			allow-set-time;
>  		};
>  
>  		pmm8620au_0_gpios: gpio@8800 {

Do we have a UEFI variable or SDAM offset to keep the offset between the
RTC and HLOS then?

-- 
With best wishes
Dmitry

