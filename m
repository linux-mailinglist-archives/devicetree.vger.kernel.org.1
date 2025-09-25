Return-Path: <devicetree+bounces-221068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A01AB9D06E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 225CA381356
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8230B26E6F2;
	Thu, 25 Sep 2025 01:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSAtxuGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F224F11713
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758764006; cv=none; b=hG8SWLkUeyHGuyy6n1FfumLHRKMXn8q6ldKElkzVl18CaIEmMruxGft92mndNZB76nnROr5xpBDr1qZVQjvNUeXZ2ss5knlVUwPst2T+9f7vAU3OgMtrYgI7lTts3nh9kucCkvNaBXvdlUFaEd9EYaqxy98c3oaPb/neidjU030=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758764006; c=relaxed/simple;
	bh=zrfzjVYTZ8zVuUra+29CM12pAOhebaaVlpFBa7gsymU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iROIHraJ9IJUX4Y6PdvieMtP4+pj59QUEWjuljzEZpCxn0Y9lFSYnIDHYdhRBtoLxSwIWTdIMR4p3K+3e8XjWt4KB6wMbEv+r/azZkgi1NXLn01X+xrQAZNifh1h3AAIN6J69qIQGpYMFwbeIg9bLDHQDNm3W+w56atY4OF0B1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSAtxuGL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P00bWu025133
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MAYOf+6wYe+77ArDzx9rSs0N
	PotguJku+fDW8OMKmmk=; b=aSAtxuGLrpxX4/FkwXLjKtpeP6nxmRmZjYqlLCEQ
	DEWF2ykZsnrp3lqedxOXHet9wjFmLvQsNsyHtctKafMTDlab7bTd47JFlZ2IKnFZ
	4sjaU9AjuxLFtylpwKhUFskjzR57jyJC+3vc6exiUhNua6D/6YfFLxhTIF3jb450
	zY0SX2MDFlSrXYVJq+hqnfHctr7wpk46b27P6qVkHqejZDorOoaXaJnZaV+lhUIp
	a871jpI1IpoNXW9LVF1GlKGn8Umtr3gSJiG+MAmg2rOjeLHW1XA7KPwAtgZciEWE
	Foc+gef2tYqIgGHrFGaMhsVich91UyfDByKbjUSdZul1LA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv16b3t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:33:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6a82099cfso10649691cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:33:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758764003; x=1759368803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAYOf+6wYe+77ArDzx9rSs0NPotguJku+fDW8OMKmmk=;
        b=wrDgOMS26fem1DrwQoB4HyNNKC/rrn32vAcz51k8foz64GKscqDOO3moy4YEaVxCkr
         egpjuPANLccRgxjgvTM3aXeYxnNgfuQjoyxtrAdG/7/v6vDLCTmQ2p5VdAlLNH8wTQPM
         /D9Ax6dqH2QMjne35CbtkvXFysKLrYgFMarWGSda9kQZN99aJoB+N0dDpqJodsrPShoy
         delVBfeZX2WJzY9t+zhRHF9AYSDkNVWjbVKpTbWnev20ukbMcfF82Z7OHVQ8jl1Jooiv
         t1epJCP0JVIJd1LCU42641Pyg9Iysggi4iR4fsGfdQGifnPRJxSojBwoTiACM93IW2wM
         jW5A==
X-Forwarded-Encrypted: i=1; AJvYcCXWsz+WUZq80TY6JtUUXiGkgg4BXZhWk+mTs/znfiEQaaFdgnN0lFyauvif5iPRb0MRq5YTtqc0faVE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw50bqpBtsuQUJB4JcuVram98p+cWE0bhGHQ2AN8o/nDgRzWhre
	W4FcrwlIaB3y4lTMbbVat7kBPJpOTxNgXemNq2AesYcMxbL85tI/IP/cNChtIvj9tSb4ltXhpsj
	dJss5XvDLbqAdYuYXoMhugZ99ejtIsBC8qDuAPY5kjzBlf1ObuZ89tvPpx7SZQou4
X-Gm-Gg: ASbGnctsR2owmodFjktpxfoctyQ6wAhqRJE3SIC6NSU6vVNloTbv+SjizhZtSbOcB1x
	m9AoUgbw/T9mrojzzZB3+wKO5qxfuUgkjmMqgQ/1iusl0bOUFhyw693dMrh1tPE3/spK2FAuNrJ
	hCUif/p9LAHbAbc/tKMdgJqD1Kn6OmNUFOAfCep4rmHvKkBKwfVJDDZ/VfJc6DcJ+oukXWHDzU+
	yDK03wUKqbM87OPjkx+ZKaw8js8TKCAr2YeRrG/3PnUPiBXmIcOf4h9xTjapu7m84xMURkPSCMX
	t4Q6xcMZ4k+0UdYg8VBZS/pqh1HFgRL/8+DGUZeuIZZ57RIHwIaek9cf3zPeuddfpOsz7TpZFbN
	9MYJNQ9skVIrW2sl5uMSZZiZg+tDjWkxmpegb5tp+ZIqH9BlO1ro3
X-Received: by 2002:a05:622a:5a92:b0:4d9:6e55:5e3 with SMTP id d75a77b69052e-4da4c58ce0fmr26416441cf.54.1758764003204;
        Wed, 24 Sep 2025 18:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs/buRc3wA7t9IKg8r3YHQpd1WKRsDmuKuJqSv26mWEzgo1bfg3M6RxBFT657MdZqpPgLz6g==
X-Received: by 2002:a05:622a:5a92:b0:4d9:6e55:5e3 with SMTP id d75a77b69052e-4da4c58ce0fmr26416231cf.54.1758764002749;
        Wed, 24 Sep 2025 18:33:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff59basm199254e87.130.2025.09.24.18.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:33:20 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:33:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370
 eUSB2 repeater support
Message-ID: <tij2dtgkb67f7b4nvyirnvocu6yqlityooatg3prxbqhfoagog@5r7izeeaid75>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: NlNOx9VK-0Onmp4YEShmNI3TJql362w7
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d49be4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E9wxpCBlzucncV4SwdQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX+u7xAGF8qu4r
 1dq/jliF7XP8gA/dvoZVrNDu+BH9IRnf1aw6AjfI4Ut4GMkyLLt52XP6qeJQyAsinihRoQA9Gij
 pDqibpb9BiibYdFBGXiOfmSfUIOXZe4Vb3TDbJQVfPeLQ1t5E/jzC4+ocG6pRv4SNEbE1N0hLOI
 ZX56vOVxFSxZI0MRHKktCqAt8qqTAeBT101q/uNmMLYs4vG8BAdEWq43hoJEg01F37NG7yWOzfv
 0OHbMXwFMiqNYsa7dw7N8YEUXddHKGoUu74EbPKB0tRusu8gJYb9K0nw97pRaX1KUg+5+xSF8sL
 sR+WQx6mnyuSCeUBD1JA3/lOY3+xv9FsT6gMaOF/aa84bgG4hWETcnWrfG+OL08q7mbRQqwfs5u
 K5f63PMV
X-Proofpoint-ORIG-GUID: NlNOx9VK-0Onmp4YEShmNI3TJql362w7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Wed, Sep 24, 2025 at 05:52:28PM -0700, Wesley Cheng wrote:
> Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
> proper repeater tuning settings, as if this is not done correctly, it
> can lead to instability on the USB2 link, which leads to USB2
> enumeration failures, or random disconnects.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

