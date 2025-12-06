Return-Path: <devicetree+bounces-244883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE7CA9FAA
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 04:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F06F31D5552
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 03:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C1922127A;
	Sat,  6 Dec 2025 03:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ISUwJ69r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TH89GiAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D27019D092
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 03:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764991886; cv=none; b=ph9NnnccsuwHqPbR4rM5D2Ih+NUlM0ETjIRD3tTnQed+xii4yFD8l/xmqk2kJ47/OxmnVmgXA8x94EHkluv9s1nFHEEHOOWVq/+UllD60F+D2qf7qyO+DVjO3gqpOSpuHJQjWSFW6OHrYpwiwgtkgTcLsXO83wxFF9M1GqwrqUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764991886; c=relaxed/simple;
	bh=tZDUog6lNKVKPYGBiNqGYHX224UmseDtPFHcP/G1/jA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EN8Z2x1VxHBcSt4gjUXPk7c7sNhRuLfP/uB1hOvDySMMoehuzEuMMcx7KTO5KovPDD4tSe501uUgwQu0cgLcA5nxk/zeZQk+4cYb6gPYWWwS0qo45aNFtsopv71Ox0PlnZjtEef5LhwfNhzvuV535KlUBxkjNgTYG1U9rGeUI1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ISUwJ69r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TH89GiAW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B60giVn1691880
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 03:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Jd8K2GOuhr1t88wH4EYraA5x
	kKERr4HZOlt68e1bdTQ=; b=ISUwJ69rn29uvLLw10xH/2zfu75u1AhobAPcb4Ot
	udC4cFs7XPhJ32QwD3Ef8wh3UhnjppDUGC7+bU9j7nfEzy2mE9Ub3Mbp9inxMX0X
	LQzB8hbw8a/wLW9hKTYc3psxc3TWx0uaallHc/fW8g/wBMvbXFq8vEm54Hj742uY
	ZCdb+DYZbXFUKiMvzcfE+Uk7paUhsnBYkuKf7pD5Y0ZHlj5eSiutM9iYq8IZrXsS
	cf4831+6RGIt1hECk8kRpwvGpqUYtYFBJ5aHR+jPgoFUGTF04/8lJO2pKS8TZBuT
	RUf5As6h/4s9aEeCXGid/6BGAZnJPCP+Gkka2lXHqTepwA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ava6f8858-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:31:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2dbf4d6a4so663975785a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 19:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764991883; x=1765596683; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jd8K2GOuhr1t88wH4EYraA5xkKERr4HZOlt68e1bdTQ=;
        b=TH89GiAWG5oijkW6bBlTO+FnU576sA/kD1T5Xz0xOG8WomntXUSuhV8urEmse+x+tO
         zRHxYjstIPyKp8vLJ6LUro17lGqNY1L6V2HdA5qccnGOM2PUFWo2V1Yv1nXqMrsXDysj
         2uY8LVKk2YKU/RJG9I19xn/7rLsVWvS6ujPELA87Fqg1yGZm+qvPpDLTH9PpEzNPuh1j
         CFEHeyBTZwrzmxl8gYrz7LzjEh2hdq3WUi/bIV0RsuBuomOUZP1ZCriH9S/FD5z1c5GO
         3rNKVMnjFDkrmKXPNnqbSWg12iLpDe2ZoQO94geBw3M/DuGmvn3O29H9H8az0t9wx9aa
         KS6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764991883; x=1765596683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jd8K2GOuhr1t88wH4EYraA5xkKERr4HZOlt68e1bdTQ=;
        b=BswF8kB2NH+tEHf87RSDjQ1hc7hEwF7i1CiGuVBkbYCeNRcusb3aJKFMHAIOH9MiD9
         hvG1WQyeEvdpvqvxKxSuBq1rY0Y8ldvE7hvO2jj4Gq15BgZu3okkn3taDjSlNSkwQfAk
         GmUvJObBf4BvS/XkcW8JxkMPpq5z/KNwzRhr94G5XJDh73BnFZ37mIFPvTJgAAHYS1yW
         IUnfcpzwpaRmBVNFWskp7RDCXik/Mbdtp3T+0fJaMFg/p1FO0NAk83cHT6EN5S4VaL4i
         H4DNogHEE1R+SqG8AyhxSQ3HXASRxt8eDzRsDtZMsAaz4R7QaXdbN6GzwI7KUm9LQSTh
         lb0A==
X-Forwarded-Encrypted: i=1; AJvYcCUaXuQhIhwxoItVvuDoe+p/LUqvi/N4MdUkhFbcCK2Xklo58tJrP3ZY7A7pw4ya5k5bJxfcCSNCJOF3@vger.kernel.org
X-Gm-Message-State: AOJu0YwD9DQ7jLlqNyRLY9863Z5j3ZKxAkKfx6Vdupd8ld8QOm1P4IZG
	r4gwwcCWPml8XJhdNK9aSCQ7F+X1OQmw/ykXZx9q2LGDMPUfSiduUJMj87T4AS0+55AF8uuIABl
	tnzvfqQs7UnuTz5rRBu1/4RE8wZRAvTW/BwewteXo9ykUo7SPSVX3tsr0UJU995d5
X-Gm-Gg: ASbGncsTNVxpEEX3cHe4uYrggVvpIUMALQpfFycbsKedBu+B23H5vy8Nq/EnECnsH9g
	UDp12RQXjOgnGLKOjuTYdYvabrmxsTK18ZrdxEzzCLqt2pmUQq1Dlv+5b6jMrMqx8K+77dMoYfr
	xyIlULiv03lK0GFmx+Agg0MzNEjvfI6PhUwWKb2UxFv3UMHkA4rTPzm6ns3dOSvFmG0Kg0Qmx9q
	p5d30EDwMDkQe6JFGQu1/yMbuX+HvA9m6/sScO2TAdxd9Z8wlCBFrdXHDBhpvTPUmIWLR/PYLmW
	US0nb7aeQjpBzqh4ZgwMjTsmwLip+92GoucDuvWXChjX7Ys+uP0qlWeNZZhz1BB0vyQnGofrJNG
	BQzxWUOc/dFcGKZc0PHgIFxbe/oRpMwZd9CHREyydZEsf5VUvnp2m5dbRFE7ApTxrpyHezXZyG1
	/x2+5hE1JLUoQkZvMx03Ddk0Q=
X-Received: by 2002:a05:620a:19a9:b0:892:43af:ba4b with SMTP id af79cd13be357-8b6a24ffd23mr189641585a.29.1764991883322;
        Fri, 05 Dec 2025 19:31:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEq/WTCdX0fKoZ2a2azt1sU2iXBXTs6gQI/MKqx6/FpzOFSetrd+1fb0pJIcD5wp+8nvtWg9g==
X-Received: by 2002:a05:620a:19a9:b0:892:43af:ba4b with SMTP id af79cd13be357-8b6a24ffd23mr189638585a.29.1764991882924;
        Fri, 05 Dec 2025 19:31:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e70596be1sm19423201fa.25.2025.12.05.19.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 19:31:22 -0800 (PST)
Date: Sat, 6 Dec 2025 05:31:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 2/2] drm: bridge: anx7625: implement minimal Type-C
 support
Message-ID: <kozspjah32l6czhb6kj7jba6vz2wbqldrhw6rov67ujlegrbby@3aeqmn2oico6>
References: <20251126-anx7625-typec-v1-0-22b30f846a88@oss.qualcomm.com>
 <20251126-anx7625-typec-v1-2-22b30f846a88@oss.qualcomm.com>
 <aTGJXAnlkK5vQTzk@kuha>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTGJXAnlkK5vQTzk@kuha>
X-Proofpoint-ORIG-GUID: SiD0KOUrDrwuwlRNBh-tJY2Lfk8bGB6h
X-Authority-Analysis: v=2.4 cv=NYXrFmD4 c=1 sm=1 tr=0 ts=6933a38c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=tLDSqiJ-wK1CsxduB6EA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: SiD0KOUrDrwuwlRNBh-tJY2Lfk8bGB6h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAyNyBTYWx0ZWRfX+eDR02yuqrCY
 dYT+cE8moRIA+n00NLh3S1pUMUzijGUvOesGFb8ifjgKoGibNvjMTX082lSqaiGeszupgfRfplv
 jX3Jv9JwALTmhlgFwZlHgYB14wmsJPV9gSasjYHZAtMRwB73n0G0MSStsx372k1GtqVqlZSf7jW
 Ce2x487Sow9Sn8ND2hm/MCbOmMDQInqP/sm+iE7/hGmvvp6/fF5hyM6b5sMciyf3lHxtgC0A7y+
 PdkRTX8aMrVSTVifWviOW6pLhahrMqPxJp9DO0Btq98KVNO3By7aWTE9eb+r7ZZpTdxOVr5jeaT
 4vKVQJLDE+lBE3Kv0l2UhJ5/RHANGmeB2ay/7eqy/sXmYNa7yB0ep4Bv3n1lQjbUsyjUFR/VI8P
 FidkGwb5P/eCg4DtZlRf/woonveQjg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060027

On Thu, Dec 04, 2025 at 03:15:08PM +0200, Heikki Krogerus wrote:
> Wed, Nov 26, 2025 at 11:41:57AM +0200, Dmitry Baryshkov kirjoitti:
> > ANX7625 can be used as a USB-C controller, handling USB and DP data
> > streams. Provide minimal Type-C support necessary for ANX7625 to
> > register the Type-C port device and properly respond to data / power
> > role events from the Type-C partner.
> > 
> > While ANX7625 provides TCPCI interface, using it would circumvent the
> > on-chip running firmware. Analogix recommended using the higher-level
> > interface instead of TCPCI.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> FWIW:
> 
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

Thanks!


-- 
With best wishes
Dmitry

