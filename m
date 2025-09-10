Return-Path: <devicetree+bounces-215431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35448B516BA
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E58C44E6C98
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273DD318138;
	Wed, 10 Sep 2025 12:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wj/r7+F2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6ED3168EA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757506911; cv=none; b=vAR23cDxphbwMDLNyYB2YMmGMBIch1sa12YfIQKefuSV+TWpgjqSQszQ329yLbFxi5NlUvVI0Z2xWtGGQlPiBN0J9ftKXhGrcmW2SBRBpw6ynXhpaSgoA/NhD5M0SBAOF0JgUmiizAbV/U2yXe7iY3m6CtwwhL/Wdf1UpVN6Ahc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757506911; c=relaxed/simple;
	bh=X6KFvaVVEp/dLB58ZazXkEEJ/edkPXleLAnQlioyPKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XO067joMPRIB4whVT4/VsppJ3OzOoWQW4sExF0Cc8CQFYFtY0VBfJF4bZNpEbNOU2ByRO6YhG0dYHVBq47SQCYTaLMYtOel7vsxggxBm73jvGx11Qi1BKa+EcINAoBXDfW4yLxcVqlHESS2KgWAGIh9pjhYYrcd77jhm+B0sqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wj/r7+F2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFVkV021994
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:21:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0vMWTcElNgxy4rtHU4PlXXcjyINdBlSlLR0M7KQ8Dho=; b=Wj/r7+F20oSLhcZm
	gR7IlHEw0gGVfncRIWGRYXpijto16adl9ymBPXPuthfLEojRI5Av1bSHNvA49oIj
	aCUo37w1MOdFQk2HGeF+I4PlPmtIitFaGpFFNZwwkJQ+sYMmaUVYmGwHwgduKqyo
	88dNq3C8/tWeLOKZiMmzocJYh2hsmr24WCHA86087SNLdxn07jII9v5S86iR9b5s
	WTNpjisCL/gnTjGLu6uqZAK4S2AVnURN7MXCr8nJbzcj6xRTrDHQK13KyqOHy0g3
	9WWrWrFoZiHu31WeP+ksnlF1BMVx2VVBarAQln7F8AZZBIiMDx5iQqldQ5r5t+4/
	2YFssw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8abpvd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:21:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b612061144so7704251cf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 05:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757506907; x=1758111707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0vMWTcElNgxy4rtHU4PlXXcjyINdBlSlLR0M7KQ8Dho=;
        b=UXOgCArq/0AzKhL8jZeY7W2a3xFC1nTwcXaQEeZmU/GtffhAivxWt7ScK15Hwm+xNO
         dvxVtglTGtxAyiIGV12XHI6ybuj8UQ/Z2obSWfzc1NEV9adU+aD/JU/rtsYLXi6n0Lkf
         f7i0iJRQXfFnyb71z1aYkXCEM3xQ9iGQh2Yx6jUESoQsaH1lws0kYLxvfW4vWysZO8y4
         Zif/TPETFI/bMozLQfRjYkGIKckuDuQXtu7xvchztTYPkUwDBIcmieMx8aj0hOqvEgF8
         vhDBAa71J/0pkwV+u7Q9v/kB82sG5SBdPxfaGMv0hs9NYvaA9Syjxdv0DTmeZUGHL73l
         CUVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP12equyC05WGuSBPtcr/jzh61P/YUylsUiiYcIJAY5Ps9h0Z8mSDWUuxlsJqeMbnlejvA/6R1pJTV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/ubow0fgAcFdUg6azSebr13uoZ0kv0GH30OvMxpoD8KsLM6Ub
	CKKv62Dtw6ujH07IK17BoBNYcwvwrNjIX5Q+r0Klj3qZYCooaJCEUFAlGfz0qRznrmnfQFFzX2R
	kUhwvKcgqBLmV2qeNLWgUfOQsIGsI4GTOwYvH/eVdQssyiY50dW6ubDmcnsftMDi7
X-Gm-Gg: ASbGncs9Wsuwj/VUM7tWiHAl22aSlJwlApbMHtOJkS0EkZOu7hp+ChbgsR2Soa++ppW
	bBwl15WY8JiPubad54pJ4YEI+0H9noAfx5lMAgx0UhUWPsX0aHHACaW6zgWVskYld1mcN3EY9fk
	Z6RxIpV8j1K6vZ17+z1T9A+R147HKl8oecSSFimBKwinfejnBkQCzfE+08nGOawmGsWyO+7NbwD
	RxN6Lz43IzcRX1UYjaJLK54AKH7ec1GTSP9qeW6msQNuKSoVeooGAMsPfvSydCsHTwSSzKAoFAm
	epttsBwJV6hO71ujvZm1QEx72WitXWBLOSOIGT/UFwq9/tVWObJAQ85XtCoQ9RzpOK4RKNyaWq1
	+uafvwvaoifPi6hVnO9TsPg==
X-Received: by 2002:a05:622a:1787:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b5f848d05bmr107672621cf.7.1757506906940;
        Wed, 10 Sep 2025 05:21:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQM2ETnZwgBv+qedS1fE1v5n9TD61CTWqUhCz41J601U3LDyveBpzWSkY3wpyOOnfMzFjhOw==
X-Received: by 2002:a05:622a:1787:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b5f848d05bmr107672451cf.7.1757506906461;
        Wed, 10 Sep 2025 05:21:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b078334e86fsm158892366b.56.2025.09.10.05.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 05:21:45 -0700 (PDT)
Message-ID: <1f979b86-b45a-46dc-b926-64f5b1b84f7b@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 14:21:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: sc8280xp-x13s: enable camera
 privacy indicator
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Hans de Goede <hansg@kernel.org>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Jean-Jacques Hiblot <jjhiblot@traphandler.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus
 <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Daniel Thompson <danielt@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        threeway@gmail.com, Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20250910-leds-v5-0-bb90a0f897d5@vinarskis.com>
 <20250910-leds-v5-4-bb90a0f897d5@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250910-leds-v5-4-bb90a0f897d5@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c16d5c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=EUspDBNiAAAA:8
 a=q3hGUckLsqYRD40seJgA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-GUID: Q1v-xgAtwbdJ57F7PXQZKKyWy8WHITvT
X-Proofpoint-ORIG-GUID: Q1v-xgAtwbdJ57F7PXQZKKyWy8WHITvT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX5QP96YIEVFEo
 d+Q+dbhBBqzbEPIw33RFaAYpHirgu+tUP7t4yOeJRDsUw7vek2Oo28trCOsfdkFkH/5NhHbfw85
 RCUkeMZGegwnu21XsBs/IIJBCIowsz8b3YjQUeif5Hl+3ZhvzPDNOrlZtWoepC3bjghbCdcnsuO
 4j3mzKsYJXV12fsqecj/bocA9s9Q+MEGmm3B4hX7H42/IxZk/HeOOeyOwlehQk0gz8TQVZxF4mm
 UP0nxm5ntTBPa3WjemeOcil65oPX4OqBrRcstVDu6FhkUNAX/028+aEsTiEFd2hD91TQv5BjJD7
 HJI86+4G0nywZKlWrcOpRidwO4ysMgV3h+QkQpzRptjcOdXW1JuaNBWXRAAW0kEofASj7IBecFG
 ZFAXqoVg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On 9/10/25 2:01 PM, Aleksandrs Vinarskis wrote:
> Leverage newly introduced 'leds' and 'led-names' properties to pass
> indicator's phandle and function to v4l2 subnode. The latter supports
> privacy led since couple of years ago under 'privacy-led' designation.
> Unlike initially proposed trigger-source based approach, this solution
> cannot be easily bypassed from userspace, thus reducing privacy
> concerns.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


