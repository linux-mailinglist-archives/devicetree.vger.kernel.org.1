Return-Path: <devicetree+bounces-243069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2F5C935BF
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A77FE34A4E2
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2B11D6194;
	Sat, 29 Nov 2025 01:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q0JZLOgg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I8MrR/I1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564791C5F27
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379208; cv=none; b=Z57rG/xmwncT7fyuynhG+I6JufoDKRM6E7HBKvHAcJL5CXQqsAKy3XJD6AauskzV5dmr2+a4/XgOItG3BO0oFPh+u2w2oy73VlCZTTxNoJwjTRyo6OQ0FJrPKawm/BAhF7+1hWsIQN92OxWJUbSYuUt8aSm4zLatWWwUioXJI/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379208; c=relaxed/simple;
	bh=Ax0bKmxJe1NEQv57Z4816PJlfnyEwndNe80T60/cHzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IVOFj1JH7dnVk0X9NZoobEUl6cH0kWPJYbhtC5twvLaoZ1LtPeK+BAyp23Z5ShR4nmED7BS8GSImZ0TV9BeNPt5CqBspB+UGB5EPIfhVwj01l7XYJK+MRL2K7E+brP9UnXU080SQ5tB2sJOVHetw89Rgwc3JsaFMvAcw8Q+8Agk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q0JZLOgg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I8MrR/I1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ASHTUt4092776
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=S6FM8DGduVe9gcXmmL1kbMvQ
	Mdy5V/uRwxeMZhnSy7Q=; b=Q0JZLOggTpAsdRDyZHwkFvnEYHuQ6xG1q0cocGDK
	V65ol9sK9GAmBusKBM9VJxJbFSYR9Hsau2DkHKbyVAPDHfHf+yuGd2xyoEpQZAd1
	BhTk0OiVhgIGyr3LRJM0PJutZ9eWbVXwv0f79JWPQrK2OqbD1v74Knun4OszZ8qz
	0Remr+XTSY7XzByJmcBcgXnN4EWAaX/czM/45XGQFP4gp94CJC/LRgvb+GuqAUQ9
	XqXXemuQ/T/v3lDL6d1cIarU7/RkS2a/2TXBnd4afTlzlnWQjHFOnpadXycTXOPu
	/NmKFjRmS2kamq1ranvDPXAzw0EFl6/wacnplTlstIlTQA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqg6d0nhp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8804b991a54so68091816d6.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764379205; x=1764984005; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S6FM8DGduVe9gcXmmL1kbMvQMdy5V/uRwxeMZhnSy7Q=;
        b=I8MrR/I1KzzKv31RXr0IXOCB8QcEZ3tSU5AxdYwNq0VnmeFzWvJwGmS8bpK0dDQyxE
         GhmB2q09obgDzCqgMDLxh8utIILW0tlixb8qgTwNGi2d9tYdO0W5QRz+FkRLM6rAGxwG
         cyejpMdRTxrQu/tYv2XBXGo3QOTp2yTnmUdld1MC8VxyZ5vupKVyXlCAilRm5aGGBrJ5
         CWBSjxDzDqfY35l4MJUrqaIjBBMiZuIWWPB6jTgjunExB1dqMUP5UaSU4IMQkUoGDvip
         lS0eLbLfD3JiFWl9KRz70PGxdALayglHLuTW5nSCZyZ9rU3wxXn7lUFmp1XMHJUPHwnL
         KBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764379205; x=1764984005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S6FM8DGduVe9gcXmmL1kbMvQMdy5V/uRwxeMZhnSy7Q=;
        b=SMYmUCnsrolUaxgywZZb/DQKgIbCg1WqhXFy2pDYyI9grnVH90sczV5cJgK3+Ibf3k
         u+pRPCtfV+z4+XzzVMtFgaxHH0I9GIjn7HKIBhWi/eMxKRBlYOEyr/xvIKyoPQppq5ju
         qQmCQTVKH4o1ZqXxt+2HwkVEnS8Bk5YI0P6saXF9wXUx7DpNfRPYMIZJj8l6Ps66jLnf
         SWwLSxYAgVYmIGt5psVLOBhon/e2mvB2H5DxLYoUNf5h4n0wQuaDUHLR3Bbuadm41wbk
         Z2Wf4O9i0Qkw7s5zeFZgPHsw+AVsWjQhD5UqL+AUXVg7Oq+Zax97XeKTOudfdgaFQb8w
         iONA==
X-Forwarded-Encrypted: i=1; AJvYcCUz9OXXjFk3bYMIQLsrCvERHEZ8CcvXxht5AVM/hyl9FbtUJQweGpxu6linx7a4GDFrOU+JgJiZ+AX/@vger.kernel.org
X-Gm-Message-State: AOJu0YyNgq+r7yp1fkVHgMeZpeHW82DQt7wnmzd7DqNoS1pR5lvt0Km8
	4bfedVvBkKoLIo30r001e/HxsV7Qmjqs/Xq9GLsUSdL02lsKsEjtFHzYS7GlI3l7k7f4BDIYt4o
	oOUNCll/JTQownwh43j3TUXf8dX4+67vn58dGArHrfMW/ghmYzzENUH7sTe1XdUBm
X-Gm-Gg: ASbGnctNiB07IQdzNyPm+SgYnI1sAA4kq7w29ljJMK/31Z6chbbxSdOGSp6AajKGVNf
	q2XD+Yd7UAMijcizmIcajVAsiTmFiezRW15B5weQ2T9LAqJz5mw/Tbi0Z6qFB+EvqO3btNzqw3y
	NJRk751gnG+4RKN8pIPfB71xXkQtfkee8WkZZDRKU0WaPdPGvuHUKyVWFiogK8Bnim4Tk7+DtHr
	rhRuSJ+eJWYnPRNirxHiOBiXPHMZJLRrInATznePJuOzhIhPAwcD7aw/ZZWebuEq4AH6hwV2SvL
	u4TGRHPFVoVJNs+xVWWP1D6wU81Bx+gkIZBbeQwppCpgKbailRGySa7Eju59ykpVOCN0eYuSKyF
	EhdelAPmTdXChx3pzInDJwyKUft0Rf7f7O5d0OY8n+8ySxubotZaSmJHHsreN6dlfSON+TYvvG6
	SimgO7Ww8OLwLK9om9CZGIicM=
X-Received: by 2002:a05:6214:4a8e:b0:882:42e6:171a with SMTP id 6a1803df08f44-8847c4c7df7mr460885706d6.29.1764379205449;
        Fri, 28 Nov 2025 17:20:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQCfRV4KKNT89Nq6AoyFt5iIZbL4G98X03t39ylDzO1tbriXbvqs4dfgDLreAtOeCmvLQLig==
X-Received: by 2002:a05:6214:4a8e:b0:882:42e6:171a with SMTP id 6a1803df08f44-8847c4c7df7mr460885286d6.29.1764379204928;
        Fri, 28 Nov 2025 17:20:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa43f33sm1543244e87.49.2025.11.28.17.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 17:20:03 -0800 (PST)
Date: Sat, 29 Nov 2025 03:20:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] interconnect: qcom: qcs8300: enable QoS configuration
Message-ID: <leg62pf274mgzit246bx7vpzdovuni37lwl6mbb54dk3iqowmk@olbpn2fnis2b>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128150106.13849-3-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=L/AQguT8 c=1 sm=1 tr=0 ts=692a4a46 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=i2ZByRJmBIJE-cFrtQgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: W8IQcX86kQbLCnG0dnQge_FDGkP5iE1m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAwOCBTYWx0ZWRfX7b1lOjpAS8WH
 l4h/9P6Drl5g2LNm0C+8Rl2rbWq+9A7Omst75Oyw1zvED/NjtCnayV3eP+nrITxFfzMEtSv4VG9
 w6WPNIxaCi8FI1q5++pBy9FNMkfhmQMM3y9o9OzQNHIQDmzYhCjz9KiobQyV4w9bLHlVMyL+N5C
 70lm3eIez/1dy5B1fwFubHow7CCEnr3vxlHNr9fWKYUFEBDQ9FuaFsE1zDCE0ZLCNq/86cNoXWR
 LzKXMln0yWl2vAenWlZy4Jr8PrOwgLPqDq7/jmOMs2yeJ4eYfN8Foxrr2kIFg2605eanQ1x+uYD
 7NHGZ9wbMUR3o1g4HhHmtIcl7YtMTH7WdAdy2RveH3kes33HCimussFcgTkAHl9O9xdtyInsCd+
 1dNBJCF048lkrh/BIgOxx2S481JEug==
X-Proofpoint-ORIG-GUID: W8IQcX86kQbLCnG0dnQge_FDGkP5iE1m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 phishscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511290008

On Fri, Nov 28, 2025 at 08:31:05PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs8300.c | 375 ++++++++++++++++++++++++++++
>  1 file changed, 375 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

