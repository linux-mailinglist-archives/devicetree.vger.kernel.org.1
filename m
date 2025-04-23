Return-Path: <devicetree+bounces-169937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA44AA98C05
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E42DE1B80B6F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81941AAA2F;
	Wed, 23 Apr 2025 13:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mhe/JN8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4B1A9B23
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745416502; cv=none; b=cnowiwst8mSQuHswrE02OJPY/+7zxth8LjpAhIpv8uBonFrimXXlBH6k9snVLhBIv5j0gCmB/Uj0rj53R4QpSDPgzvGULOM4yz0NHB/LFoBodxUMWhRqDC/dZzMtdP36Ah5eb70bWkrbCdLYiyl15h+kk9LMZ3LINsb6ob0hI4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745416502; c=relaxed/simple;
	bh=k62o+ay2M0IbQRNfbp10YC+dWMBh5vmDDp0amjZHXxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kDklMgcL7Qp2H40dBNaUGnAQHgpLpaVLWT7fCuUbZ6ehNe33tH/2OCq0fqMUUAayU+HAxPWdDymgXm/zVrQHhmJo30weckwHLpNnGKioRnrN7jYtin26v7YL7ENgBY34TLNpImTU1JNGbFpaPWwXwwwplxCftHUa/TZ94vRti3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mhe/JN8p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAZmLw003044
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:55:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ch6JIJp6fDzsw1vuIJ2eZ7S5
	WCWU4GzfWZUvcdjbWkA=; b=Mhe/JN8pCtR+E92A8mMd4EhXFKMkh2kZiPy+dN0q
	Mt0QhakfGp0lFBe5ucWHN9RoxBj7DMIYf2b9je+98CsBB7qHlVV8+GCtTX5TPivh
	25f9FZ6nTPnG5fGN1gjA7fugN1lsoo/LZe61BL3aUyckyq5zeuZ4afmCO11lgeIT
	wQpKADPDvbsWamqduJw0k41OZdiXrFVtMZJZr8Gk5E1kJdiQLRpfPT5Sdbh6w6dW
	EHrQNryfSL6ukFxcGoNw97aNpQSlMK3LVTxpUfFrqHU52WvrzcMqlJSR56q+Kkv2
	hCT7Gyvu6nSAJ6FBlyr7eKNBj5LHMzSU+njlPslSKdomrw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy2a9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:55:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0b0cf53f3so959598185a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:54:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745416499; x=1746021299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ch6JIJp6fDzsw1vuIJ2eZ7S5WCWU4GzfWZUvcdjbWkA=;
        b=ViQI6pnkTQhSW9x3+/h0+Y51uuKgBvPuypY9BlFEyEYNOdJQ6HIBPUCMzLjRriIbP4
         tl6uQy6S/MFhNGpwld3L5GmX+mXelJofxC+WiKjgrofnsodlNin0jS3DQrEK8Sf4dj7c
         UfWh1RIZmSDJ6ecJjPjaUUCE7WRoGNmZVBU7nqa3DI2pkm86eGZK+wly8t/mB9YSrXXR
         d7/xf6KlUtocUqeh2/9OzC8yiQ0aMu/tj1cPmK3Uq/T1qjNB0aS5jtBhjBxbVDk2Fhio
         j4QRvS0igCYUpGS+VKu1tsYWxJnSwUZnZcYIhjhvSkeYAbiaLAokjYUura8PYIRU2P59
         tWxw==
X-Forwarded-Encrypted: i=1; AJvYcCWPaNhVzZ7top3eX2AwQboWvoDE3MTXFyHP84ZNr8PWKVe2lWXHG6ZMC/LhOxHNb0O/vyxcTW7dTBw1@vger.kernel.org
X-Gm-Message-State: AOJu0YxoFkTv3Xt0Xrg8Z3nkLLWb5y9KXdCXPCA4d1nzeXkt8LL4HzDD
	WNGqAz/MVxTg5OZvqNL1VEeuoTC2JnxH+onwPk2Pa/f1o8PiST8yN3GSxoPby68OxVO8ZReTN/N
	Zqlrhcc6nXmRkbEcO1yTTy3gfBZFSbzNczxSCn4IEGLS5X4CUVXO3mfbaen/k
X-Gm-Gg: ASbGncsPaLbwQ/UmxTFjxKJnzV3Ac93rlQDOD6Ty1WBzwuZKuUUMFBx6Fw4Prjx12ws
	Z8GNbvIUSeb0vZ7sdyBJsET5uWUhaj+3c/WpKHScEACwnIJ/OkziRr7APU13Pavcy1VRSuC6G2y
	MjOhTs0QG/KxUGwZ29l0kz6jsjrNv2xelt0hXDGyn5o1lqzayMJYWHipz3JCII8QX1xtXjTkZ/O
	7xE6zN3hWePK+I4IvnzUgFLoUQrs62MOH2c8UHgMHdnNl9uMxgqacR0GclxR+jVTrD1QyXeMZbB
	FMXwrwulu9xNJC5smeT5WPxhN+w/JAR0wGQPzBmhrHeIcQCiIG6g4qui9KeVvTFrtuTMS7pgkjA
	=
X-Received: by 2002:a05:620a:1a1f:b0:7c5:642f:b22c with SMTP id af79cd13be357-7c927f99563mr2964406585a.20.1745416499214;
        Wed, 23 Apr 2025 06:54:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCYGAKdZu53by47MDLIJhd7FQhQZJw0CY/lsfFM4Rh7noGH96BnMs9HrnTEVjA/8jZt7RYLA==
X-Received: by 2002:a05:620a:1a1f:b0:7c5:642f:b22c with SMTP id af79cd13be357-7c927f99563mr2964401385a.20.1745416498738;
        Wed, 23 Apr 2025 06:54:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310907844f3sm18420431fa.38.2025.04.23.06.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:54:58 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:54:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] clk: qcom: camcc-sc8180x: Add SC8180X camera clock
 controller driver
Message-ID: <xlueboano26kjqkukhdmealdkzdpxdde57w6v5r4rjegydce35@i3e77s54t6yt>
References: <20250422-sc8180x-camcc-support-v1-0-691614d13f06@quicinc.com>
 <20250422-sc8180x-camcc-support-v1-2-691614d13f06@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422-sc8180x-camcc-support-v1-2-691614d13f06@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NiBTYWx0ZWRfX3kgVTSIjO8r1 monxrTNyksbQ2tqiUtqlksJ6LbchMSnP7+jM+aeY4Rz2cDr0xdbVdFNE4tRRI9jPK4MgASs3Br0 ktubLXHbTyP3E0RULbrHaEWRKF4YmD2R4mxflsKoGoxVqQoH2ke9022a5MXOQcbPRmHG32Vh9va
 m/mShguSyxuCc8DRL1mJ0tCGLO0k3TgBPLsSnm3hMlqys9bn3X0/qXl/SHTmHYEQlDjI7PU8kNz DdT6nPoUHFJam4G0HJI1TXJwkdybmKMuNavo90giRK1JWf3iU8Qu+zRDmmjXweDCgD0OeHLTxHX PD/h0a0qR59ZMEOsA4HTytiDEHhWjsNzgp5TWs8SqJrlI6sjwjrrHeRkFUbb4oN3TwITdb9pcEy
 X3gNhUjB8XubkWL5lsvTAFt8mUoW24b5Y9xXJYmPPZzMDb9nf2vPLDEYaaC53XGWSsopipR7
X-Proofpoint-GUID: OP5i2qIxIzb-_bLeiWtjPZ42VMcrkx5O
X-Proofpoint-ORIG-GUID: OP5i2qIxIzb-_bLeiWtjPZ42VMcrkx5O
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=6808f134 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=TIlaLBFy8nvcEV5Zc5gA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=844 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230096

On Tue, Apr 22, 2025 at 11:12:11AM +0530, Satya Priya Kakitapalli wrote:
> Add support for the camera clock controller for camera clients to
> be able to request for camcc clocks on SC8180X platform.
> 
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig         |   10 +
>  drivers/clk/qcom/Makefile        |    1 +
>  drivers/clk/qcom/camcc-sc8180x.c | 2896 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2907 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

