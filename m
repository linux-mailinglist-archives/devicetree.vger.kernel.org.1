Return-Path: <devicetree+bounces-188811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 075D8AE5A1D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 04:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81C19171B45
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 02:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82D11FF1BF;
	Tue, 24 Jun 2025 02:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QUIKAo9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4034115689A
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750732688; cv=none; b=O1o9bqZxA+ck67XUTzzklaVGXESFG1/Kop9+ZLT587AtKP+egBqlclmCrd7zaYz5g05LZAlxGSYTCE3qNa/Eab5+Md8zOgrvv2USISvisoFr4KAbX8gRR/NaWK2pID5lwi855b1fK75JcumtBQZwV8X+e1MbuJ4oigQD4yy7qik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750732688; c=relaxed/simple;
	bh=X+F8/Va5MaJsDqMhZEjM18XX25g+AgZMnj5NbJTY2e0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PYkCiLGVVHXlfKXTPvbjdXUT+OFqK8sVomusAc+OxL5TWddioguUVl/39VRyULoXx+uKBXEmS79G2FfE5BhYeIzEozJC0XAmxB3spSLoOQZEp0wAw4aAAoNFTQW3b+OJN7s18nXBnA3S+X0hSwOrr+dLkg0XYKNk8W/ZFojP7wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QUIKAo9J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NHVf4p006106
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:38:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hdLg2oNfmHMNU0HKZgkFa6Rb
	PHtVFDrUey/Iu/89Txo=; b=QUIKAo9JhqBLFYJdadDzaBuEw3kSDIRoyTKFQhw/
	OxPlMFW5QQF/JYiWfDoSd9X817w3ECKTSYNUZ8urNSfkx/90Jxm+qRcxy7cVODa1
	dW+mpGggyirZqYjOqarrHd36BU3SXXHyV9CQ3rz+06MAiWOAYO9UXRDo2lvv1Sfo
	YNGm74ER7QzTAr76FFrGmtutTjszYSpVn9th5gsuZEs978WMzx28j9p7oN7qfQhT
	fq60WAEhfy6E8hbm5WeazeW5F5mu8/RBAbUvvC7FkQ1zN6AB6Hai8dj7WyeWjJFt
	NPmgEJF4H7KZnlgW94Im7wo+zIV+TSL08rVWCmP5DHXNWg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bgak6g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:38:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d399070cecso891519485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750732684; x=1751337484;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdLg2oNfmHMNU0HKZgkFa6RbPHtVFDrUey/Iu/89Txo=;
        b=bk6Qck4sBYKQceTdM70cONlfp5TwLvFoulcZXwAm6gPqYkQSnvaPZnGxGqHy6R37NQ
         f5pFrKVGKFqnPnHQ9c+YR9HvCFe7LrYxRlZoMwdgCaRrKnHZBb/bpoDVcbB8BSfhZta3
         lrBmrfGMdGcCRdlz/zLlCKbXltb1DQuw5E3zP1ylBVHlZiMXQKJrnyF23VwRV4i2CLsP
         6ah+lv7WzYnMt5cIE2MC+ZW3QGoIjOIE8Mf5jboic5UF6QdINj3DPRGd8NUgATRXOLTR
         N/7gLDamQyErFWo5e+y6SEnZ1sP0fCD7V6mT1dk98aaLH9h9SqSj3UvsONYKUiX060Qd
         gv2A==
X-Forwarded-Encrypted: i=1; AJvYcCWlAT6VtRGsxXM/k9iJlhC8kCie6JNiADMKhTtE1RD03+fiXF7SsfxeyJqGrSW/VVeIvdrKF9IZHhMB@vger.kernel.org
X-Gm-Message-State: AOJu0YwPpih4xw7yJfSgfPy3m55PvHdMkghCjyyuRBOz1JT9LIdpZVGU
	In34vS9JH1VGL0f5z0xik7YysrWVoob3wF26uacIqMO5u0xA7wdRwOZ5C6xZUg4Weyu+unNY1JA
	e2uEA93Zs2h477nu5hEhXdHWsKXg+1c1NpVx+ZE7Up5DTZUdUSG3TL+xB+i5KHyBE
X-Gm-Gg: ASbGncuYj9v/r8EEfY8PfMkrxd3FpgQNgFtiwLqGHEzaOAOwYBpnsm/YLA/P8y6de7f
	tLHXgXA0L07Un/KxHSn3RSnkfZTxtHNxHvfAqUqeU0or4/lU1RI0xTTv3RN/iMzPnJ1uylhBuO4
	QlUNe2lgK6HZt7HGGH8yh76BK/9H6lVXqt7DSPlQnMHMMbqwDYyxpvn0de9ZiZOUpzzPvuPv0Rq
	wKmcbbleyXHeeIvbA6SbWq3fJBUYMAUEEkuaMUGDouxkyOUD0JiqkawVl+eDD69WkR9txtfcZCQ
	uJVFTxeWmS888e/1nE3QTtFXNcX1m3I+BGEwnS07tjpOFBS5zsrLIFn7KW3+qcPMUqE5iHS68zb
	FVR/uxwTeFwcCk9IOsMGwKTRqf/LWZia8Acc=
X-Received: by 2002:a05:620a:29d4:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7d3f995655bmr2433476385a.48.1750732684190;
        Mon, 23 Jun 2025 19:38:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmk4ossS3aDlAyhYOxoxigRRcdh8Pf6rHbt2jlN0L4Pq1FMD/jGPhHO0PoS7VAEr/X0dOG3Q==
X-Received: by 2002:a05:620a:29d4:b0:7cd:27e7:48c1 with SMTP id af79cd13be357-7d3f995655bmr2433473785a.48.1750732683796;
        Mon, 23 Jun 2025 19:38:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-554e6dc186esm1070601e87.114.2025.06.23.19.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 19:38:01 -0700 (PDT)
Date: Tue, 24 Jun 2025 05:37:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] misc: fastrpc: add support for gdsp remoteproc
Message-ID: <loeqgkxkep54mrxwchvypqr3omogwpdukgvfc2dwuhp3ilxkhr@vtgxbgdoy2gu>
References: <20250622133820.18369-1-quic_lxu5@quicinc.com>
 <20250622133820.18369-4-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250622133820.18369-4-quic_lxu5@quicinc.com>
X-Proofpoint-ORIG-GUID: zI9Zrpg_aQygiZyY6GZEp_VM3QwrKbyY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAyMSBTYWx0ZWRfX3PMWEzjLnwB6
 cAZ1gmo+LhWAjSJOQD5iTI1ZX7CYPdRP9kvNBo/2hiQzCqvge6+kG0Wedks8dse62Y5yh1uYh6J
 3N8Y1qB+idNy9aBB0e/OEQK680Xy/pZWsWwBsqx31UrTSwYjqR1LM2bAZeVOmKKQ0+dnNiUckaA
 gK8U3QbDTKnVF9GjcCCRZxfUg38Mh20WeUQT3E6d6+A/ZLJQiNhJDEcitEZqv4KFAgWYSKrZW9b
 hji3JtYxIt/oH00+c4odqZtDo9psbbbqABWOBgipMBt7q6OdFpj40VFLU9PzskuMIVFoAmh24LW
 BV5My++nlfkHkgZ9IERo2vpoUdLVvZCJXCzsRQ84BBr5Pkap6NgHA7ZJemzOGCTLl2w5w1JjaAe
 dXERMIeEmneeN5uLn6SXqNFOT+Y4jEIvgRilZ2v8h6UxuHhB8q8J+3IQ7yZhSLVUtVtgac+L
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=685a0f8d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=lc4KdpPQecCvDiYUKO0A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: zI9Zrpg_aQygiZyY6GZEp_VM3QwrKbyY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=894 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240021

On Sun, Jun 22, 2025 at 07:08:20PM +0530, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GDSP remoteprocs. Add changes to support
> GDSP remoteprocs.

Please don't mix code refactoring with adding new features. Split this
patch accordingly.

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c      | 57 ++++++++++++++++---------------------
>  include/uapi/misc/fastrpc.h | 11 +++++--
>  2 files changed, 33 insertions(+), 35 deletions(-)
> 

-- 
With best wishes
Dmitry

