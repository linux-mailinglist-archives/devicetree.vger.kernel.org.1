Return-Path: <devicetree+bounces-219966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC91B9033C
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B80843BDF99
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 10:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B08309F12;
	Mon, 22 Sep 2025 10:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SK8+hF3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5570B3019A6
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758537545; cv=none; b=VqeUzT5xQZ+4N8XGCBVwRmHaLCYp7S2spPRD0OXyewAMdMD2yfAhwIj7MQEA7imVOLS3UtgqqgsgcOGLVM2gaPGxaHejDz2sBOCb/LC35sKj0TOIUbTUJswO81jxU+Gr8RGkBjkwIeHmuCA/wjqJOJDDga8vLNDSAWBJ0kKnoLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758537545; c=relaxed/simple;
	bh=n9IiNcHVzF8wSrGZTJKLMTVcm6rKQY2sKCgE2XYStcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DxekhEWoWEI1/vq9fci2IVYHPLjoihw263sDEiIbua2fb8CzXy+8n2U7mhYqj8EjgYD/JmT2Jy4PmEuU2wlcsSnYk6xc3iNk2E74u+LOX+z4GjFH6tmjePkMZXYU6SvgN1ZYbsSiNDC0b+XkCZUGH9cWfTr2HNwgWQgdkGFFUmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SK8+hF3v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8v8ub008034
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	//qK6wXZg3VBUfn/3y6cWL6qPfASe+TuJHYX2mofcCE=; b=SK8+hF3vd7O8Lkok
	QQzy0rGVxV80rkqb0+J65HgOtyQdcWLlD3vOxhhv10WZuEgLf3R3m/X32WC0JCjJ
	JgwHbMi5MCiP3W4t6183/UiCst1mplMxm5Gb53dPvydfSOjI/9ks13DF+VmtOTCS
	+yzH/r+Q9spXyOp4u6fmjGvm9be3Hs/dbqpAoHnrtzFUBc78NTGM+Iv9LCYpYX4k
	Foi88/C9kPkuJ7t+t2xERB/IwsFFjA2Fpzamllt+yLQDM8pV69utChBW0fAPpW2d
	W1/jEzh2xNRf9J8D9mo1LaVjT2R8z1ympQlmyUaBvIkkq/q7Oj0uErnGq3LtlHpl
	6PfKbA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyemppt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 10:39:03 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-244582e9d17so14783055ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 03:39:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758537543; x=1759142343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=//qK6wXZg3VBUfn/3y6cWL6qPfASe+TuJHYX2mofcCE=;
        b=Daol40N2Sqn1aRpqi8H0UUFZNHiMlOL7riNVSPcpwbt6t858grjzy9aO/BQRcOBkN0
         1Bm2BloJ6wm9GaJAt7QMwmJnPGw3bXMn7zrYE6wEvFzgAdsXhucBqmx3lu5xLMfQcOwO
         vJKwsHjRwzP53JLxEZnO4RR7ZyHDgHI0CyIRH2piaSz1hlcaL8eadWYY4yZfWgAHlAv0
         SBU2PRmi9WSgsDCJPLb6kNESZiQMV9AMm3Yl5PLmAYOOhOURBhVKWDJWknsxgQXG4j9f
         nDIRHR3OR5t3OBRsEBaJsOYlrs9wdIrTRerHnwZCYTv0ur1ntKcSslkFP48fw9iuAGqH
         pS9g==
X-Forwarded-Encrypted: i=1; AJvYcCWkUI5A8JM0s4D5i1usUs23ozt699FUZ6YSK+zs72Lvfy2Ei9GyMJ9Vr0PfHxHRbDqy5EwbIjxkjQnX@vger.kernel.org
X-Gm-Message-State: AOJu0YxMHlI20rAjm7UASfmEIS6mhxMlz3eNr1Xd8fQN91vUxrS44rws
	COmST/u2B8R5AnCtl/U4eilqs/Kvv6z39Fkl0b71WCzGuR70AJ8uUzJxvlcP+OnlqQA1Ku02xBv
	xdqQMAb+amOJ63CZOICd3K8iySjvRol+ADqsouehRl+pxcD7RL4gST3Q0iG1omlM9
X-Gm-Gg: ASbGnctoEBS9kq1IsWatLrQ5R51Y6b7bDU3aEJLJiQJrhDUvqtRqCvb4ibf52kgzZFw
	shJIurBCU8xwcNWfcb95XGQoSMReB6uF3fm25Y2VejGYxCNoH98q9aLmPbI51a/oPTM8k+iFgVQ
	FPmuG5YiSxV+H/OKV6mzu85TIp9008eBCeyHh5GZZsjfL8d9GGSnoTsFpDKXj3WBZUxX3xVvvU3
	3IKbpNAhPZUnfFeRzPd5g6yreLFIHQXdRvH49fY3QS9yI+/EMd35zwpEVOc7PY7iH8kOkJcLgc0
	NSOz4WcWriftCKQ/y6XCNvhCSIqlt2x8EsxJkxPYS8ckKWAdsbeXgvuuBSo++9kOUg==
X-Received: by 2002:a17:903:338c:b0:267:af07:652f with SMTP id d9443c01a7336-269ba5443fbmr57183005ad.10.1758537542554;
        Mon, 22 Sep 2025 03:39:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ8EgA46Cot4VHvbFVkU1N3hyNZvluBxUAUjIVdbYP7UL9NYQ0X80HJxHmx6fYBf4OwquS4w==
X-Received: by 2002:a17:903:338c:b0:267:af07:652f with SMTP id d9443c01a7336-269ba5443fbmr57182785ad.10.1758537542098;
        Mon, 22 Sep 2025 03:39:02 -0700 (PDT)
Received: from [10.64.16.135] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269803611d7sm129020115ad.143.2025.09.22.03.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 03:39:01 -0700 (PDT)
Message-ID: <c95870e8-e481-4d3a-ba4b-b990381b3d45@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:38:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
 <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
 <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: IOsyRN_ZPNiPPgbagtYlZTN84Gjj0iOS
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d12747 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=F9smdMtuN0WkDBw8KqUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfXzWpd8lpF9/d1
 rJpTivHN9i7rNbvk+MKDR8sReSE8F8VTxl3niiKZVxtxzGOinfHAGMYQGyl1s9DhLgbSMtEWZv0
 VOpBNJY0N8OITI5E7lXQX5YmffyHxLR1LTE7FDBvQwf7fn+T0b7rCN6NBR+pXk841q9UdcSmX7b
 hn4jRQf2fTODc4M356B4Q5+HHFvdEmYO7LndAYBaEmaFoiCZexwuIV+vYg+EhTXIIyLWQ4xLPbb
 oAN7TAqyantQS2VzHP0rAlW8puATILLgF8X48lu1Yd687dhtfqt+i+sPW5jTt0+57/xGnATq0nA
 8kg0c9rNNcN8avSByovp7I3BAiD/Ege2bhZaYXs8zRX/dl/6mchWZbVekVuZEmuXJDLyzPo19bf
 wYttgBS1
X-Proofpoint-ORIG-GUID: IOsyRN_ZPNiPPgbagtYlZTN84Gjj0iOS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004


On 9/22/2025 5:40 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 22, 2025 at 04:04:42PM +0800, Xiangxu Yin wrote:
>> On 9/20/2025 12:45 AM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
>>>> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
>>>> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
>>> Why? Start your commit messages with the description of the issue that
>>> you are trying to solve.
>>
>> The original reset list only works for USB-only PHYs. USB3DP PHYs need different
>> reset names like "dp_phy", so they use a separate list. Moving resets to
>> qmp_phy_cfg enables per-PHY config without special-case logic in DT parsing.
>> I will update commit msg with issue description.
>>
>> Or do you suggest using (offs->dp_serdes != 0) to choose the reset list instead
>> using new attributes?
> You can't because othe DP PHYs supported by this driver will use 3
> resets: phy, phy_phy and dp_phy.


Ok, then I will update commit msg with issue description.


>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>>>>  1 file changed, 15 insertions(+), 3 deletions(-)
>>>>

