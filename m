Return-Path: <devicetree+bounces-221846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B72BBA375F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:18:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D4157A54E6
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5300D225A35;
	Fri, 26 Sep 2025 11:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BSUQ5OO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CBF35963
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885495; cv=none; b=tZufIEFksIpnaVeqhPJxtX4gqMA06G9DQuLg5kD+ERVLHnCrJ1ommo3j1o7iEjqeFHqKHG3HZ7ndWpxT1Sia1JlFgq44MoXQuLp0rOdHUNFU+3qAfFqM3rN9PpJdlmqpzA5P5GiLXL4T7ZtPN4MlxNoeHk+RZRCR6UqgkSjii84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885495; c=relaxed/simple;
	bh=WWXLCQcdLw/jfXQnL555FapDZ2XFm55+s0Ewk9K6eVw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jQjs+mvGs1W4hxY0pF4wOy9VjieMusGrMAvF8AMmzYRTtKBJWf09SEpICufp3Pzzv1RrWkHXVFieX5/QVggCBlZFS1Bn8w4dCsU6XmACgRknVKmXoVFNeHD1tCLrH8SCxjXCL/zrvsoOmqLly52JomnmOAIjR71xdsAddUGMScA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BSUQ5OO1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vjPi002710
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Eq9Zwf2rKiWBOFDTkcfFofQ9fiSbCfKkCk6e8JzUd+4=; b=BSUQ5OO1IXahVIuV
	Vn8Ku/wW88M79HlafbRzhLbeqlgfbsYTcgba0hO3JM4RJGdeUy59wHOEI50o1ePw
	9bWfmr1qmXKbOyzPbh7Nhf1oybSp49g36xYPjfD1H1bQqUs4D31V1sqdumkbJREa
	7xDKdPmo5XjjMS+ctOvkrYZqJ9SbwqEXiIY5ILTqiKZxxBPD4dAg5fkRhV8ZFhWK
	iGEZnV8piOhPbPhu5gsQj8W/Kk7HhuJAnLWKzXAHEQk9YWtRtpNGIGAEc0Ok/G7y
	vSjaSUoeWIV8kARA2y/DZ1FoO/wDPRK9sDHrywxChABlyRLNAsXA1jkNFW9Km1gu
	S5kp5Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u2mm9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:18:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85696c12803so82927885a.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885492; x=1759490292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eq9Zwf2rKiWBOFDTkcfFofQ9fiSbCfKkCk6e8JzUd+4=;
        b=YNvKzfURV+ct+efRDSn2Og0mnze6sc/M0Rc5qsuiR1M1J8Fuq6IweDygMXaCzpAARy
         49kmygsrEGYLSWhoWkrwDLXXqjlnDvnzGC+J7K4GMK1xKBIUPn9/TV38Zf2t6iQfqfnv
         TOaUUFyxwSBoyMt3KWdVh5TRUWhJjKFBGbU+/a7rQyW7DR2uWzWcuMEF/k6ai7tVqw5H
         AVy/dw9lMLJogiqqG9UzCAh0BuNzXwBRDUjregrJK+pGnhD2itoN27qJJPXE1/W5oMjl
         g0Y5RepZJKrrEPRK/iy31jJCg8YyjoTanf+lAF6KzbDa6vjkbgryCBBt/H7DL2s7ttw2
         ko2A==
X-Forwarded-Encrypted: i=1; AJvYcCXzcL7Xp3NeizDED5l3RWxcLYBtSr9msVqCf+tbhM7EFTw501Qd8so48lrHM+3tHBA612sZNQ5fKC0e@vger.kernel.org
X-Gm-Message-State: AOJu0YyIBizC/klR4w7+TsLhPmBHRhbYS7+69TryvDnHrrQspU6uFgQE
	SuUoYWbsJYOStd8M1kci4r5gJ7eFClpYbUskN566qZvWZ3mjVIndtDIpEdDZCYVtYzDjM9sptFU
	Vq1P2JlLU1ElFsHX6qcIH6BOTUhVtOZGr4pVARl0KrOK6s1Q/3kOjnGeIQ8XQqAUK
X-Gm-Gg: ASbGnctCs2px18tdiDLH5wKKFt/5V0/Y6wgpVI/DnOXzl92ijokbtnzWlbdDBCqkFjy
	sVDao00nScTXdrcn5kOETnh9ObwuDQFuOD6apc1ig2k9xMvsf+/IpZP3GgKhHMguwkrpxMsg3Dd
	UKdXfgb5yjJ+MOVsNvONm8T6G/cT+Qfjmk4+OoJxIHBjlAthj5v/ltam+4AagmE0Q6gy96cpV2i
	onJl2xT/5yttZvigpDad9LprGZVCmbeCM/CFWZWwhl+lAJrOzcHwJk62X27Jk2BVw0iB2gAz+03
	vD4uItREJAXc1bltfRxU7VrWU1DhnUDxsafsrwQ+Ky9nJTXr/g8ma8kXRXGEvMVDAJm+GlGqmXp
	QHHUaP3JPYpAF+GF3RWtsaA==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr601252885a.9.1758885491745;
        Fri, 26 Sep 2025 04:18:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTjabHhK02b9oVhzoCCGFrlmQKMMkgWl8q77/ykLbuE2cCJPi3DSQKHtmGntFz7aUmVpFMZA==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr601248385a.9.1758885491079;
        Fri, 26 Sep 2025 04:18:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3545a983ffsm349631066b.94.2025.09.26.04.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:18:10 -0700 (PDT)
Message-ID: <652595ef-ef79-4c36-9979-b536ca65e1de@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:18:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/msm/dp: Update msm_dp_controller IDs for sa8775p
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-2-quic_mkuntuma@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926085956.2346179-2-quic_mkuntuma@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zulVZiqbLkkad189GOQ1CADfuTLlbFQH
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d67674 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=tFSzMcqD3SoeBU5fSnoA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5FuDWXOxg6mG
 0bbJDFIzdmK+fyFrqhAVed83XX7E0UJwx3tBtQM2E0SHRSbb9umsFt1+QeaE1AfjBc0ys7eBOEx
 KIOrF1coEb5jGK8vZvx7isz/oRKaHf7gbbogF8oNvV7j140bvcW8/LwKVC2p/L9eTr1HtfcAFYL
 dhPMQktqBVr9wrZNEqfxid9e3uPvjCx2X1B6DCkGPHetIM7voanwsPn8R3ib8wDiOOfYVDvUadY
 zXiaeZkCjnh88k7jr/5CSbPrm3/RbhPuhYKfYUzrFKH0WiuFqciwVS+/oIGnbp2yZorUundkbTT
 QEre2AQ2lbqiGkQElZQcWGl4wu5AfEBC0CQefFjFUj4j9wqJSr7dvTSd97ONzeWMaX52sAg09xd
 yw2oactGBBMp9yY6I4XGsEvVvCXkPA==
X-Proofpoint-ORIG-GUID: zulVZiqbLkkad189GOQ1CADfuTLlbFQH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 10:59 AM, Mani Chandana Ballary Kuntumalla wrote:
> The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
> for each mdss. Update controller id for DPTX0 and DPTX1 of mdss1.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index d87d47cc7ec3..f247aad55397 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -133,8 +133,8 @@ struct msm_dp_desc {
>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
>  	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> -	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
> -	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
> +	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },

Well, did you see what happens when you try to plug in a display
to a controller on MDSS0 and MDSS1 at once now?

(memory corruption)

Konrad

