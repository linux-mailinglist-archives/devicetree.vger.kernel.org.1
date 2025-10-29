Return-Path: <devicetree+bounces-232699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D197C1A84C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 998D75636A3
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD462139CE;
	Wed, 29 Oct 2025 12:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MZ6nJaY6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BbotegH/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96745257841
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761742019; cv=none; b=a4/y4yYskVM9kS/MoXthSTIXgL0Znmvki7YZ0x4z/7XdNXiW/pHM7dqXVweCnB2ggbCqjJK6iBvv3ZQ4HfN2J+tzeaWXptBHtBAWzGWYF+qDEHSBRrihxQ05GX775YvY/G3gWemiRYj3YuWg2Y0120Z5sF1LXfLi6Hze26gzNi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761742019; c=relaxed/simple;
	bh=dnKBgkT1Amxz2EOcqaHGfJ6KsEaQ2Zw2NCM8IZjdjvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ujOgS6stDnx+lsENo1wb5khzX2x7sZLZlrnw7a0eH9vFWQ9TtvCLayVLs06mmHZZ42Gix7fQfxejuMH5KenaeQrM2cmqsNUt4mZqxmNjXF59MhrLvMNXx1pxA1+OdJT5q0nOvz847yAr+W3aciNF5s5oYFVkc9MwE9YAwnA3MnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MZ6nJaY6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BbotegH/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TCQCHk3755502
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:46:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IfxBhg5EA7KNG33hDreKmS9S
	RAlwrx3aLVwNmvAZprk=; b=MZ6nJaY6z1YaZe5CbP8kvziWuXbRFcKTxnHqMQBi
	nxND2dtzHlBuxNcHZxE6PZAYa8+d/bXE/yyiJZ9xeS2khgahWdwlirCIUzxINVNZ
	8z0yYIavabj6XgRYCKLifhXJ7TgZjtiMtSKo4sFY5C6l2jTKVXvDCBwh1Lv/mxqf
	r+O+iksUDFN8C4T5VnsbR7MtmhzsYLfYyq2IwerAa6AKutp3Fi0A7OuV27AHbRKD
	Fy5GQzCtf8Xl6DgPrq8Dr2WgcWRmrqltIyySDixkjIiZm/VlJpyczsv/+OIn55Gq
	WP4j8RICXbt2Ds5KmoLocJ62BTNO0kAdNa4iEtF68K+mHA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a0jj0c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:46:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6d53016548so10978778a12.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761742015; x=1762346815; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IfxBhg5EA7KNG33hDreKmS9SRAlwrx3aLVwNmvAZprk=;
        b=BbotegH/udQopiHFcN61t3zzsCmnC4V1gJ++6dy00u5G/P5yQ42ynz5ZdPea/D7oYl
         FSF6rmmUu2t2zossKLgmJVUP+pcQN5g0rzCkUzgfPqlehvUSqKlECV/d8SzW2jOIX5p+
         uQz8tTKXm2vi1vuEPHCL5LvWeq+WttEdKqLBd4TbpNqEkJLugsVUk0P5jIx+aLlrRj05
         g1RzJP8QV+7g1etwP9XLzcEeRw2R3L1B+Cb1mUB+ZA2VSLDCq/krZFe5sWRgwgkGPN45
         gqoWx4yEwZ/ahP4I3VwI4LWO4y9PPXbrSQcW1AbXED+TegTsELzP+zMVyLviMFNBt4lJ
         iw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761742015; x=1762346815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IfxBhg5EA7KNG33hDreKmS9SRAlwrx3aLVwNmvAZprk=;
        b=Ou8eQNKNfrCQtcNA2bTL1Ph/jfhSl9ILzsAPYztFsbSPhcOBF+l/avG++ULO/udGm4
         JBVv1Rr1b6uCycpH7V0cSu0ANkYNawxS1PhXYz3uX2X4VmSA5u2RW3/2o6qiMSn1CuIS
         M1tntUw2W1SHDvEikZFvIbQ+vv4c9t4QXjNSaUDFnZIXtMIkpKCWoLGhW+kzST3qEe1M
         b6cO9Vqtq8LymuhjF5JTaxSdsjd2JEKBUnUe11kz6DSpEHAp/5PZA03ZszfgQxFtDrRh
         lDjhwsK9bSQEDEbsSwkY3od+Um7Ptk6OcswRxu07Lz2V41xPS6UqEnIGq8tfpiiYjDSE
         GIBw==
X-Forwarded-Encrypted: i=1; AJvYcCWWa2NtCbYGjlUFJC6X+fONJnrspBoODAgES5d7zlGhDjTlvOO/L71fhnRfR+iztcJnYYIIK6yblHa0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx71SknoGo9IeFuWWf3HU8iNwZFxh8wrYJ+x4VLsBJ6LgTRJIaL
	3MWASKvJj37bj09+OsAJzsWymRnMQCho2fZnNe2P+iA75FmfvmauHxr6SDWQuHYZbH5/7KWZDXY
	OZQOFLFKgOT3+44LGKlWfcz7U6eofKLGrLyhROcM5Mbf+4P7Dd5tY5NExMUUDpl6d
X-Gm-Gg: ASbGncu2Ka3+YtG+6UhELtQZe2WifJkW2qrPkqCYdDbq3NfOQJSo2lGSh88amAbFPAP
	SE51AkH3Tif09RKBiaIiWi03QmFyLC/qzVWS6MeuYH2VSUgcwdDxTqSJ4fHUWg9naJ+32nKyvO9
	OJ890Dq862qfSIeU9FHH6aLgR29pW2GUJZDZiGC3cvaLSMC6XQFXnc3Oo/68gcuipxgPYGcvJJb
	wWegWthqazRaaUaL19WJvbLkhT+/YiOoG6YMwwS1hlt+NGhX3o0I/p0weJv9GVnJwwRPR6F/k1M
	pE/A4FeH1QKqDYNiiIgy7uQy9alLQIOdgVvsMeZUURryeZjLKxh7iMGtyY3wo5jiYWrxEKh9iq/
	37sIDZDRQPnmFxtVdETCcrC/7oHy9yf+aOtqeGIP3KTXFmCp4vhBmm2414c48EQjG8s/JQXy5zS
	hagEzGZBHc34iS
X-Received: by 2002:a05:622a:14:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4ed15b552aamr36075321cf.28.1761741300990;
        Wed, 29 Oct 2025 05:35:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHm3Q+dGlW8otQlZhFsV0mtQgmLxmSohXRXXVuIKe3S4ieVAm+unm8XOsCtG+LLQlVUTpOAZA==
X-Received: by 2002:a05:622a:14:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4ed15b552aamr36074791cf.28.1761741300397;
        Wed, 29 Oct 2025 05:35:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-593041884c9sm3457534e87.96.2025.10.29.05.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 05:34:59 -0700 (PDT)
Date: Wed, 29 Oct 2025 14:34:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: talos-evk: Add support for
 dual-channel LVDS panel
Message-ID: <sfxvtfzzstdbt7in6z6ztsjfy6e555fr3sjbi5kqkv5sk77b26@kl57zs7iuuvk>
References: <20251028061636.724667-1-tessolveupstream@gmail.com>
 <20251028061636.724667-2-tessolveupstream@gmail.com>
 <d05fe82a-640f-4a09-9d83-39bb5aff179d@oss.qualcomm.com>
 <9208d2ef-79da-4e80-ac1f-e01fa5feae0a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9208d2ef-79da-4e80-ac1f-e01fa5feae0a@gmail.com>
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=69020cc0 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=AN02phsTtlwncWaBwlYA:9 a=CjuIK1q_8ugA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: ce5e4wBbb1S_9vSb9kqXuRe0RqghjxIX
X-Proofpoint-ORIG-GUID: ce5e4wBbb1S_9vSb9kqXuRe0RqghjxIX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA5NyBTYWx0ZWRfXwI9OKC12k85e
 Vo5JbEBlGOrJSGM5YpRb6GMwI5k+WsxQWlqfkl3LiZinHeO/pXhy85V4FXCi+KHWxO5TY7etWg1
 Js4HfcZYtpwjJnh0bpHIQyddBpw7F95WlMIHdM7lSAi5SYd0yV3vFp9tRPs+LKpBxyFzicUJ0/O
 usWca+t/N9O/yIs4MiHaSeroNAiIOhDUnRAZYDx3e+b7ju6L6cVsdzZ9DQZ5AhBdJS6yv+guIFs
 lmPUV43MTe/dwQ8PS8id7zNQXI7WhVBaSLaYPsnDavFs8/nad3Asl+YfbpmYGdaklvjUqKncYWv
 NaZ6q7uCKw4KKaiW3EQiSyWqE4Re40DMBnEwKHwCwotmCCGFddaQL/cmzvoF9FsXRkEnUrI/z3d
 t4U2GJQDJoPu6sBGHWkpyt0qHTd5Lg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290097

On Wed, Oct 29, 2025 at 05:50:01PM +0530, Tessolve Upstream wrote:
> 
> 
> On 28/10/25 14:55, Konrad Dybcio wrote:
> > On 10/28/25 7:16 AM, Sudarshan Shetty wrote:
> >> This patch introduces a new device tree for the QCS615 Talos
> >> EVK platform with dual-channel LVDS display support.
> >>
> >> The new DTS file (`talos-evk-lvds.dts`) is based on the existing
> >> `talos-evk.dts` and extends it to enable a dual-channel LVDS display
> >> configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
> >>
> >> where channel-A carries odd pixel and channel-B carries even pixel
> >> on the QCS615 talos evk platform.
> >>
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> > 
> > [...]
> > 
> >> +	backlight: backlight {
> >> +		compatible = "gpio-backlight";
> >> +		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
> >> +		default-on;
> >> +	};
> >> +
> >> +	lcd0_pwm_en {
> > 
> > Use hyphens instead of underscores in node names
> 
> Okay, will update in next patch.
> > 
> >> +		compatible = "pwm-gpio";
> >> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
> >> +		pinctrl-0 = <&lcd0_bklt_pwm>;
> > 
> > I think your intention was to use pwm-backlight and wire this node
> > up to that
> 
> Soc does not support the PWM interface hence we are using gpio 
> as "pwm-gpio" by setting the duty cycle to 100%(i.e. "no pwm")

Why do you mention PWM here at all? It's perfectly fine to use
gpio-backlight. That looks extremely suspicious since you are not
referecing the pwm-gpio device at all.

-- 
With best wishes
Dmitry

