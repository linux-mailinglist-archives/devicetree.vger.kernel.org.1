Return-Path: <devicetree+bounces-205383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E7EB28DE5
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 14:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 853E75819DF
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 12:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327822E2DCD;
	Sat, 16 Aug 2025 12:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OYeRqcfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF16421C9E1
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755348241; cv=none; b=ATmPX667dVnviY5bFtVApAXJ6i4VRohlMYA+CYxTwVEbhjtkgSRx8baoC+gEd2ums6ZHpl+kt6jq80+PK5MqwQjG6beWbNkHae9s6nx2cwb9lhn3EETLSNg6OHqroahF/zSApQySAzssod/Ai7U9q5fFDf7u5LrQnQRB5scdOjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755348241; c=relaxed/simple;
	bh=dMBk5+wcbhXjwJZlDOPyYGIfvFpwhONmfJy657BaEnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=abc4bzsb6yr+tdJaxhvrDNPAqXRzZm4ronipB8ZrUZLZqkyDaWVp0Xdjbv8AeU7LHkLwEWcjEaBZD5VN5qo1kfffczfEvo2ZW3XSqS/gQzp1Pc/nMUx2Rxi5Ydaad6Px4q3m9MShgtmT5s8bl6ihN0iURSEdSomiBttEOmOJrJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OYeRqcfk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G3AJpd023630
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hD41N+iuU7Kbn6z9yv3DbEMr
	3/duRX5zPm7iHVruBQ8=; b=OYeRqcfkhTQxjIh7vJjse2vtU1r+cS7Xhy91Fmga
	0MJIdGJVdi7UG2s6f3G52TBGFYDyabckVva3S6pUcAyjhO1U173fmbncQvGk+b8c
	irxKYAvxEPnUsKzUG/2WvA5plPaxBr2FfFODI5byTp8R1Hmh6sO2fFZ1LTkM9qZX
	kLOotCbt2WjA9k0qDhooSxPNyCRslyBiej2XKu5VcdYPjJwS9Fhrrc2GRwdebQP3
	JIW9tJx6v4v1NBqrqZ1fop2dR5MxGjbTWCmsSokpDT6fXMDCKm3aTQp0QC6NaAUn
	SrfNcE5/7+UoyyPO5lukJQ9ctqCI5wzr23TwExkXKSh+BQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jfbn8vqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:43:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a9f55eb56so62174826d6.2
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 05:43:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348238; x=1755953038;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hD41N+iuU7Kbn6z9yv3DbEMr3/duRX5zPm7iHVruBQ8=;
        b=ZmIsysiH0G+6NJ1+0duFCXEaxiePX815eNg4+q+yCaxY1lo1lxTDPGo+sHBXhQrEQI
         Ve5B7KHgpP3xwc3VaH3U/4msQJ2lC7TC+Z1QKVwl9V9rXU6DhnAsBenISeY5tPem2EF4
         a7T0tRRucXTgyy6SuIL6rXyIdQkLp9sPhmirRN1IX2S9CElSPywMLjRlAcPcvIu2G//a
         CNB3kZIyM5qcBX4C0Sv8dPe08gwDApJ9jo1MOSNwW958NV0AFZmPjGPvl5kYCQTJq06k
         zj/0fbhfUFiqRmpi6hStecRQ65G/9qpE808Qyw9OimeAmH4oxuT3Cz6BIVv8CfwIb7hF
         O1Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWRLWWX012F9gKV8pd1Qu8dUC2fCkQGgu74lqAYGIhwG+G549F/DVQY17yBx3uflSC3MQ2BzCsGDkty@vger.kernel.org
X-Gm-Message-State: AOJu0YzmMAjX2rVUr6KDNCuLA2MuZbi6lmSWJfOWhGPo4yrmz4pq3tEf
	SGss2onzgu1psKgmt5WcVP1WIvSRo7qv5y0C5c/ClEFK+4x+vH3Kn84aDpGQafLxvzJDXQw2s5i
	eWnTCeL3A5wdbwQ9orjz47L9uv68PwjjR4JAZ33EL1GpRbit85UGbwq9qRnuxC2mQ
X-Gm-Gg: ASbGncuW9cqpvw+320AvuXNbxeAPjLHmlxLvQymzTvRZ+hz923TZu7SOvgs8uF66SGw
	ViCrklQqMD/ZYmkJw5XIReFXkxbVp5X1MtPsoYXD+5oSqvUzq2VThiE0lM52Crl8cfbc/0mowCZ
	eX+3zw9pGvIk7Ldi0kBncmw4xFFg8EmcUt1MLpPmRk2DzaHGF5v5lpe2bbTY90M/3y9RHWjvC4k
	W9p2HbJ7SBi5o5gNeihUgMHH2dAqEPUo2BrjYmlH2XAewsXeLI/9nbgHvSqMQRd4enJLkPYmcF0
	38Lwc+YSdCPwVzHIq/mSs3047mWGBbiMioCObw7hNzb0N0t3ZOixpewApiw9Kk467h6t6FUyd2e
	rYEQGwTidG00LwpWUmAQsnkuz2iBePi7X/46qH9F5ltna45uGeQJU
X-Received: by 2002:a05:6214:d63:b0:709:8665:f839 with SMTP id 6a1803df08f44-70ba7c4cce8mr65606876d6.43.1755348237648;
        Sat, 16 Aug 2025 05:43:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0UyWsTrhGdjI+ezRe/+lqzfPKZobQcd0dOkMb96fMEc7XS15fnKL25K3jpBjKc/VZ0RLorw==
X-Received: by 2002:a05:6214:d63:b0:709:8665:f839 with SMTP id 6a1803df08f44-70ba7c4cce8mr65606556d6.43.1755348237202;
        Sat, 16 Aug 2025 05:43:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a604194sm9918731fa.50.2025.08.16.05.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:43:55 -0700 (PDT)
Date: Sat, 16 Aug 2025 15:43:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] interconnect: qcom: icc-rpmh: increase MAX_PORTS
 to support four QoS ports
Message-ID: <24c6v6ko6iynfpqrpdqawcbgmxcuv4vngtmsm36cjektxnzhvk@5qo26h3zpnva>
References: <20250814-glymur-icc-v2-0-596cca6b6015@oss.qualcomm.com>
 <20250814-glymur-icc-v2-2-596cca6b6015@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814-glymur-icc-v2-2-596cca6b6015@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAwMSBTYWx0ZWRfX1dO7mnIAtZAA
 WTVbDraJXDlT9ZF90K3dCSTSiWScJi4g078gmElUnjjSWj4nbc1jiD2A38AQfLjBczJVLMXEXzu
 kyh5i8y9k9spxq26Du4zzprf1RGwv8ae+ZFfAhjaaG1F5mkfg7+e/njgW85sCzRI+YJpH9/TKLN
 GPPnXMR9viaRbtcWNepRIN6IbejdWhyflj5/jp2aNTiN7lNPFM6NSEx1fuQf5Bg4kKDWStthCmr
 jAZjb5xZsxVr62UbKguad/6ZkLduKabrPR0DfewYJg0MTVlC/z5VbkI8O9U7svzlr1Pi1ipevx/
 Gy+h6FNea3ku4XYNqF6qjms6V+KzKGu637zQ1qDEIqfVcQet0NnQ7PV6TxeRuG/gY4rl+LQCNRA
 JMevRH9g
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=68a07d0e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=x1hKQwPmBbkKbiGcM9gA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 7_c-kS-80b0n_8HCk07-KJLMASHhPmc7
X-Proofpoint-ORIG-GUID: 7_c-kS-80b0n_8HCk07-KJLMASHhPmc7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160001

On Thu, Aug 14, 2025 at 02:54:20PM +0000, Raviteja Laggyshetty wrote:
> Update the MAX_PORTS value to 4 to program four QoS ports
> available on the Glymur SoC's interconnect master node.
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/icc-rpmh.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

