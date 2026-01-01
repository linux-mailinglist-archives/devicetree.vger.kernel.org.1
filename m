Return-Path: <devicetree+bounces-250967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B87CED473
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 19:56:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D02DC3009802
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 18:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF832EC0AD;
	Thu,  1 Jan 2026 18:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QrHZUUVo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BlnVTt3c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6723A9AD
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 18:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767293786; cv=none; b=Nd4w5RsTMUwJc8gybZJsnQXGUUXJbMwlcxkv1r++aVNqZUkuWv2z41MP4mKz4zGBJjSc8p/Xc/Lbb1ywL16dxKXRUhMAiRU1WbztSHlBHT+Yx6EnEU7RSEIRLLsM6axX23eErSTqHPWLMwwXbC8XWXN3I7nf3gDSb9Aku+sKlDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767293786; c=relaxed/simple;
	bh=ztA4ERIUaOpybGOh4SHbJZ1suX1ZTxmjgGeeLvFb3ic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YtsFAWy6m7sqArCqk/EsHcZy1xNfbNzgKQ1pNJ3CEXZfRZBf0TDJZiVpJRMGFmPNAksnzNdJyWyuqsNwuHX8fmKh/1xnpCIsRTMVOPLyOuf3BE8gvJiwSX1PeHGB0GYuKBrpwiATaa0m5huQ20oNgb/EGC0UV5MZpr+mC2tU0Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QrHZUUVo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BlnVTt3c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601FasVr2378529
	for <devicetree@vger.kernel.org>; Thu, 1 Jan 2026 18:56:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qO1Bf50KUVnO0lVfdCvVquRm
	mso9xPQ1/QVgKeZcbRI=; b=QrHZUUVocHuODULCmSdVCjwrONDXtR/+OGtrDkAj
	WXrjDosHzVxFV90nFZi8r4tTb392Ov56biujKifdorn6kUI3IyuM7gCav27dr1iT
	bOeq5oMvL+qkxTvQ1OSI1bjROzlBQuTekTZrO4wWp71y6DLEzi0Ik07JSWZ0V6BR
	1Fcn2nN4s1+jC0ZD9qwv0aVNHJPA7sUIxDIZM9z6WzC567w7pD7QBeoYpSFmaRs0
	CDoUdp17dJNEfQK4+0jsxCcDbIYLG+EyOIW976vyJtxC0BatxcMJqKzgOXXOgLNA
	AR4WeT8pn1YfBpy+2jy59NO8/Qa4eO5vDHAfJPSx+5IxXQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd7vthv0c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 18:56:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1d7ac8339so438757131cf.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 10:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767293783; x=1767898583; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qO1Bf50KUVnO0lVfdCvVquRmmso9xPQ1/QVgKeZcbRI=;
        b=BlnVTt3c0oLU1zzeFQ1/k5clK3FMxL5MGBWSPCCZrROTvuvrETyrWkhKtxPGg65H++
         EW3xwm5djefsr6+f7BnWjm4j27gXsCNom9KXUFFbIYOecc0wyS4JZzYfJa2FzbN/VQo9
         HPWCP+LR0z59dMzP/F30wwh9WMADcUpQ8SFdI1PSHXFAALNSKFaue/uGuKaPQb/qsdeP
         roO4hDjiyhZTn95kGAZIo8odZKnO+CZ4Vj+0dD3aFl2t0V0Zq9eqdVq+wIowNGYLW/TU
         9AxO+U3Gs2mTsoXjW6lgKe7ZPuGUfnd8sAmt82ue0PZZb5fwjelKDiMzw2ibBmSF26FH
         Nn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767293783; x=1767898583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qO1Bf50KUVnO0lVfdCvVquRmmso9xPQ1/QVgKeZcbRI=;
        b=R0Vt3hgMgEclRA5jaAOo64F7Wc6dSpD4qPvsWprLYplJGptQSp2XqkN6whpYH+e0rR
         CzVvy5sUj87nlPf1n3H7HPMqH9LrOnpxfQBLzTVm4VHN144NB7EZeQGwUeNiDelZZWBc
         sKmgxy8hfeSN2OFpWF5exOOJ6SYKgxWJYCd6joY/oiY6qnXsGw1PK22M8kz7vStzmmZJ
         i96RImHLDclboE5ewPOoI1MBAU/6i/tanJ+uyIcosL6H7DYTbHB0cxYTfJuBTIorgP62
         iOIRKpfruaURkdhdv9WgEQ+Ix9ngmXwSHJaBknphTt1FW/j0Rcmj7/duYwrZFNu5H1Ao
         ZcQw==
X-Forwarded-Encrypted: i=1; AJvYcCWrT6R2bvCvDYSDgKGW/QQBhxyjog7v6wQC5d8EV5bbLSkJpFidxAXUhwbKnrOK9646c6o8Box3HpIb@vger.kernel.org
X-Gm-Message-State: AOJu0YyLb0ASxRoo8/YNz7gN/IW1nbD+uLPvmGS2gC+ITBolSuWxun3+
	vpkby36Iktz4HWzNrX6wMy6qShVsiQlp/TPZgQ5L0fTQB4vMxPiJc3/Rq4TvpnN2hYxvEDcWm1d
	XbasJ1llzvDa9dJGr8VpnnasCyEYXlJV9MNZSXcqBDk3gx93YVFQ+dge2ilCO5DHivJLmOTdo
X-Gm-Gg: AY/fxX7+w1XsdyI4oHnfMjCN+KHxMPax4s/kKWc5NKgJt8GoZR3FEe0J0ZBdigMHR9x
	4kZfFcmPRPvd+EHwONA7QzEeNt7B/gjiKOs5fPh3qzc4uciT9XT2XVd6Nzv58RxpnMqE7oDpPV4
	oePNkIzAdLsY7qCqJXahy8xPIrFeSPCygsFGbey2mq3Zkgfe9dOzrSB8j9iZLvVyUy/PI7Kw8qc
	7iVQ3tksa6JV3ZYtyTmuzbmJ7j7dDp+XdJBAW7co0R+867tyvgAe/Hqhp+Z4sTW4Nup7vu+jYiQ
	DcGtw+6GqI0QXJEUWpEuG1UFYlCSrqcYlTjmjibQISBIfjoj4s+46pq7nSVj9iuuEIJWIewPFtj
	0lXyWx1zf8QFevoueBw2s
X-Received: by 2002:ac8:4787:0:b0:4ee:26bd:13f3 with SMTP id d75a77b69052e-4f4c2c946e8mr340883991cf.8.1767293783227;
        Thu, 01 Jan 2026 10:56:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGvXKVfNf6JItm43nU/tdNJougEPfJ3rcs8qbHjPjq5ZWNYyaamji9kyzyAqX8oQhQTltCJQ==
X-Received: by 2002:ac8:4787:0:b0:4ee:26bd:13f3 with SMTP id d75a77b69052e-4f4c2c946e8mr340883801cf.8.1767293782713;
        Thu, 01 Jan 2026 10:56:22 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b36fsm80390448f8f.5.2026.01.01.10.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 10:56:22 -0800 (PST)
Date: Thu, 1 Jan 2026 20:56:19 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing UFS symbol mux
 clocks
Message-ID: <32gaiw6k3pwzdiqxbvdga76rj5bfyuhkfq3xxnfad3eb5yhagi@rvial4rz27qu>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NMbYOk6g c=1 sm=1 tr=0 ts=6956c358 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Tt4ZZnawlGJF5pWS1soA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 5iF18kb62Alw9K-rTweVL1AmR93mGSx9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfX7+qAm7eFaRyy
 8vMOICnjLKghYcYVtEQBK4NXBrTZ1gKsQXN4NZarN5dFwMAW3sKeyJW8WEKspZVri4q9cNcFhR/
 y14hRAr5DLYQgkMUUr+A5Sdi4h3JxOB5Cd+nWCX1EuZaUm3MWelSLzkwK+m85Yk3ceYlekHXAaI
 0bqZ0RphWFrukMKf9UmgZzp5ieqqjtom2G51BAZ062XobspZ5e2Vm1/ApgcmnNxU0y1iQvEC4tK
 Zsspk1NGxU03sMOFfX8+EZ7n4YEA+1V6xyAP1qy+GC+xGWJkUyhiPsPpTGz4GGVidFBOjMobwON
 lPR0HolSTX6+vKZi2UC6mBG8bj25vcvMRylI2x56FTEWEKLusjYRkqSaVjR01ZwZ9MK7WcB8BMi
 lme3BQnEdEpqyTFmuSzWjuN7SvUDinBi7GS8ftPYpNmLLzWwgEXU1AVagoPsNAn3SdyY5pqdxT/
 ap2NR0unGd9D7WKBlig==
X-Proofpoint-GUID: 5iF18kb62Alw9K-rTweVL1AmR93mGSx9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601010172

On 25-12-30 23:08:35, Taniya Das wrote:
> The UFS symbol RX/TX mux clocks were not defined previously.
> Add these mux clocks so that clock rate propagation reaches
> the muxes correctly.
> 
> Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

