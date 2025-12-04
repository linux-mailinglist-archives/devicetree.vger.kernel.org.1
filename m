Return-Path: <devicetree+bounces-244260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D99CA2DDA
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 09:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2133301CD87
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 08:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF3C331235;
	Thu,  4 Dec 2025 08:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajDm1ADD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YBQLYVNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24C0313E21
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 08:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838557; cv=none; b=jQX5+SOr8VJJ/StxvivqRcu/F1w94uVk3pAzhqvJJyo5ilymUydcTJEjXMxcjYGvY8mxuerN+T3W4riSmCHnfhr6Mj1SLk3TvD1axk/kOuieunK5PY14fXwUilRnO8oNabUAK86rIJ9W3Fge+uoI3yMojH+TGq8/5LvXjUgkMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838557; c=relaxed/simple;
	bh=4iuHROEak871swX8Lrj4bGhhwPF9+vlcElBJeTvOuI0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PZ7c9wHGQ8lBKF3p2OYO6wJZPncsLMp6nCoRA8CYSZp5YChUJUfQvCYTs+7omFBGgk9fiZjGjZ2xEe+FXuAjMIgmrJOYxwtaFTmvcFSExvjrdDNFpXhMJl7Nn6R53j8Kjelxs2CuJfceZME+69UgyAk7D5e7XWpSfRZDoeY5aZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajDm1ADD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YBQLYVNZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468iXN625290
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 08:55:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lVyrTYU81hL3VTWZlMKWhfdj
	L7QRH6PnVBeS23BWFYk=; b=ajDm1ADDDQ2eEr7ubLAkxGXiM6AX7DNcTxkoO1L6
	tLS4jHW8b+2n7ytxqS5Bs7/JwII2UPUXwj4kLan4xeAyqkDUSwsWcoqqebG992Pb
	Ye9eKFrqFJMsTIQixUJeyGIPe298Y3y/pMXFsgBK4Kid9XWpYfdhx8YK1VINVGsR
	ntzIzJJrFIazuv7F8G4zA0p3vB01z1HEK/p9bJ19P/lLtZNh6lmaQqj+1irQTcXz
	6LLG2zTzkTUABq6xBzw5lYB3UO008cFPnHGOOa3iIcOVFnrDiAtz8tYUV+g+gRS3
	60QwA7NT6PbIyEDTvEfRs6B0uzrLEUaJ0bMjF8iteDb4Ww==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h239k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 08:55:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b24a25cff5so145392285a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 00:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764838553; x=1765443353; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lVyrTYU81hL3VTWZlMKWhfdjL7QRH6PnVBeS23BWFYk=;
        b=YBQLYVNZYBJD9fylfmBQJnM9+jPTUWurSV1jsZdc+zhwZFYJboADwK1EePXbaVxOae
         WYLV0sA6Z8McsUPghfOS3yFjL2wAXrQRTuHhAYayMRyhYQ9tpsi9OmAh9nXktOR3xxVt
         Pf50oNKeakFct8L+wzAUydvDv7TRH1D7GdJvpZO/M3KZHUgI+PCsw+4j2Gikb7hNnPim
         KchaNSmU8JFOeC+MVigpSpkG0CQ6ATFshbOCBgIMik0q0zZ1IG9Y09227XOKXJJt9jyM
         m84405cChs/f2YZ4oax3wBbPuA09hW83nI8I5xYCuU108P56Vx0Z6TiOfqE6oXI6X0yr
         dtYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838553; x=1765443353;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lVyrTYU81hL3VTWZlMKWhfdjL7QRH6PnVBeS23BWFYk=;
        b=pM9Pu+sq1FaxwOWS7UghlUzBkCPTUYcciURIUbSiRSBUzIvGy4K+wyo28WdNIBRjKA
         mXJDHVb8v+4pOgjELLESXm8Z9Xu1WSF6jk6UHDlELQSZZUBi9WbxJGe00xmEAUIfsMVL
         CpXUzbJXAVRG2Qq0Pko1CdfwuP/tb7L7xljVxo2cQGmAcOMXTXGUzXn0EiG5jk973Ujr
         p/REMpZKSGISVXWB+WsTM1a0vKMLt/Y5rQZELvHOimVh4BkPKnEJOmim9hIDN3pfVEn5
         OtWFK8ak7MmeJKrvVyBDcLl9936h/jJAc+49velte5IODnJINXd9JkYUn+AGPzQXvZVj
         Jdhw==
X-Forwarded-Encrypted: i=1; AJvYcCVc3skPpGJkbXtX1jcS4uIPyN4GYEYHAxz6YHD7ITqCFblFl1zajRW2iB95JQs8LYUWR4ihpX8ZkKS3@vger.kernel.org
X-Gm-Message-State: AOJu0YzXsOwKTE4Avoi2JJdJCpezm/hCZJUCcLmWf+qRtDcYsVeIM5wq
	krH/XERczvdMp6WUn6OYGK1UmighHSucuwP3yTk+EuWuutxYP6SfEm9HzVLy/kOquAbHQq9MAOR
	tofXTlv6W/FzlJxw6w17Qwuu/IjEq+QPihxOKS5elPRobhvc9ZPQbss4LKhcCg7/YW4QK+td74C
	M=
X-Gm-Gg: ASbGncvp/bn1J5ni+aXV6UfEJksvE48AZw4tLjFFAvNKL5/vLFj41UUjVywSHCpXKxp
	FO+5H5ltmo7qbBR3SBjywOGnPOfYxAPsWb3kCtD3ycNhF/WNIcLQ+qtb1G5aOdY/a8ueOilFLda
	nOAN2SsRYtEWtXvLlHUzurVp+velAaYk5i2jvJ4c6mEsNGpnxOFo7CnZUci2Fa1LOOrrPRqoHhM
	bP5xHRgMy5WZx5i2qhK9ilgCmnJML3FczvZ42VF8YkgVujPw24RDQI6e+N5wEJU3+S7cZQPTVs0
	e/oPtnUxiAKobYhvShyOUFKMfyKFZt+L7VWDTB82oAQjb6Hv/U0s6B/+azL995odOVFf3HLyrJT
	hbCIOlDQ=
X-Received: by 2002:a05:620a:4088:b0:892:eeb9:4def with SMTP id af79cd13be357-8b5e6c851bdmr732208285a.49.1764838553583;
        Thu, 04 Dec 2025 00:55:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3aMX7sQTlgLJAAvh6lOIQsPmJ0UfemPHarT/wW2H0vj3b2gdf96N6jbTOI/7ld+oredQsQA==
X-Received: by 2002:a05:620a:4088:b0:892:eeb9:4def with SMTP id af79cd13be357-8b5e6c851bdmr732206785a.49.1764838553028;
        Thu, 04 Dec 2025 00:55:53 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbe8a7bsm1979480f8f.4.2025.12.04.00.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 00:55:52 -0800 (PST)
Date: Thu, 4 Dec 2025 10:55:50 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
Message-ID: <nkh5hmppf7wlvlxfwoneceaggodbj6mz2zuajoo2uqpg5ebxqx@mzmh3afhpnjo>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204044644.3072086-4-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3MiBTYWx0ZWRfX94cEfR4Tek3k
 wdr6taPAViELqVMfnc7R2TBZPpKklIJ8DjulHdqoh8tjISOc2RXyfPbeMu+T7oLTYqHmD8vp83k
 dwNigYtm4rrPQkf1Y5op7QCVTE7K6wh5kvFbylT+/OR7IzEHqHT0moUVaOf84losfPI8wrkSN6r
 BMxFbQ+uXQWvygdpA238uVGWxwEx7pH9I/J68icLc3+dnoFnQmpCpVFhGB2CCm4XCG21YbzNZtR
 mcJ3jqu1z0DkRLpDfeZnWYEB/EYgpmdohToASXMd5bQR1O37KmIRATaDiSPus+wA6a3ycWlbh3w
 bqLJHItaJhMSWkOsruKiPm162hMO6QxpgMjlDO3tgYnEGM1wgU6WE2Ueg5PbDBD2z68fL4+fAX1
 FRdvVFZu0c87AjA1VF8dJgeOm9ck1w==
X-Proofpoint-GUID: jpJV_7_9eEy8xbK2g8V7cC0DACj7z8cH
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=69314c9b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=l7HdKJapEFYTXkbJdyEA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: jpJV_7_9eEy8xbK2g8V7cC0DACj7z8cH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040072

On 25-12-04 10:16:44, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

LGTM.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

