Return-Path: <devicetree+bounces-202895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE90B1F2EC
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73B585807A5
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA018273816;
	Sat,  9 Aug 2025 07:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nTgVFaG+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CE921D3F2
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 07:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754725815; cv=none; b=gGq0l6GsxVBC8leW+Uy2B8OkpFjrhhrGbPx628FQCI1bPCXbtlXCDbmKGpByZ4Qtb3tTTAJ/Hu1sfw1mEuw6F0c1qElq6f78jWQn7eISL8y86iZhZqjgBmUdvde3CdrGM5+jVmtXjRxme53H6lnz1SUZD58CaRonnW+O/GAlZRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754725815; c=relaxed/simple;
	bh=tuG6zqQ5L9L0iyhIjN9ZetGHu95N3Cy/2VOf7ioHYHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OpukpX4bYdchhGbYCT2mO0dy637mVbZB+VFz2hISKWsu7wleQg6W5M/kCaxak7GgvdVI7dQhMjhaubxbcDM9G0XOvclt8su9z9v8gUQCX4goOVdTuiN699rFuz+RPpbCxSBfChjRprEJwbNj/heYY8kNm8RocsWiZ2ojJGCi0To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nTgVFaG+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793Z3hY012617
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 07:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KIv+87WZnmPNL4ThTLyntiJN
	mnPRtbH0PSGM5L0qqYw=; b=nTgVFaG+K+SEp+Vfk+2TVXAI/wDQYdOOXCLlaFpC
	/YgJwFRzTroZB0bxc0qpZK0MpXPcGoG3Ul0bkSwD0ZwgIJsugo80Zlmz47OAwaqn
	m1ndpen2AP1F2BV7MCpk8CqUMfbPiuAbIemyXKoiFKrfXLTQ+wiuceWkiCBVC5rC
	0ovy9bsoFIyaYmCMz3DVPWS/HhCIXPf8Tn15jEaEqNBh8nrIVAiRREoAgA/G1moW
	9aHMTFg4p1IC2ok1LlIgv4hKs20/qXHZsIlPmN2ymfQJGqhk+AtXAMEEFmNJYm8L
	GhScut/QhvrH4FnZLAw0vIxLD4YffTmflAkx3knMAjPIHA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj409bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 07:50:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b068c25f04so70259261cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 00:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754725805; x=1755330605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KIv+87WZnmPNL4ThTLyntiJNmnPRtbH0PSGM5L0qqYw=;
        b=ovDsbegkcRKZhfawgrbaGeGJ6q/uFSE8AekqfNW7Dhfrmo8nH10EKBFQB4ZEH2poRR
         /OwAd6ZKclgDGrZxFVIRh1R/HRcNCALgHdvSwBdTFNxDxt2HZ5njrJClkoka7ffca/7m
         u2vYNoY5IwVuUJl1EICQAJrxigJ+Fpmwh/nwgAmwu4Gjwp03dZwSGkF/jz4/74IumIHT
         48fb0MSf277hVPsQ2nr2q4tN28U60OQWPu6C042HMko7ZsJUL4OKchNNgJ9QSGOqz3G4
         8bf0szglmYtSL8cxorQOkuWYD0ylvAPDvsE/YPkbWejejjK57yR3+JwvrCRo1zMjOKrf
         QuIA==
X-Forwarded-Encrypted: i=1; AJvYcCVQeC534+BdzZWs5BJTP8uVswycxfXRlDEw1z/wc9ZlsOAoQmZvVksTWdmfJna0nbQAVotsXQldeX9A@vger.kernel.org
X-Gm-Message-State: AOJu0YzUxQ6frw2hiEzFFzoDd3+crj/CJjz6RjahJNrZYORJ3ISy54ZW
	Tb0LAf/iKryCMMOc+AfbVBnXtw6cIkxczOyYB9WXcErWlWLeXlbghvowns4GmqNCJNIZNgOFYU2
	C4z2iOXTngsIHAYIFeiNOkloB9i6LnNPb0jPa00AFDb4y9CaaqaKTTlWMM/zY7E/U
X-Gm-Gg: ASbGnctvZ4JYSIBqWrLQ9BmhYpLqX/mjGsSI7wd++304KU7ENxMSft3GD8SRqWn74tP
	X0FE0+seoTBWSQd6tsjRs3rIbL2AWAiCrWCiYOLKelMK8DZGrQdV3egRlljL876HTQ+eBoAjsc5
	fxbN0Nc4NwQkfRkey82IP8LoaOnjFu++98/mgudCWVBCIJgct9TMxwgQZTq1wkT+bgqIh0myONV
	PSUDNSn85r9TMW/IR74l6zqELE4hGr6Bbbuu4NoKiPxvwQu80ZBD76SUOVxcgH+6iebpWSGv2FW
	/eWh6LjxUIkva8ckTacvzUQhHbdefKR/wW+0Nkby6IWgtz1tOmCnmhGzXxCMuEcMqbWdlU33I7u
	/hEG3OUC7m1l7tf4V/YjScrPE7Eedn9Ch5iqXritKrjb/UZNjq2On
X-Received: by 2002:ac8:5a51:0:b0:4af:202e:8089 with SMTP id d75a77b69052e-4b0a08148a0mr125899501cf.20.1754725803171;
        Sat, 09 Aug 2025 00:50:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxI+gjavNM6ggie69vmxassR2R0tQvO+7zh1RHMuETVx53XdjkoGj5x4yo5p2INqhj3jTguA==
X-Received: by 2002:ac8:5a51:0:b0:4af:202e:8089 with SMTP id d75a77b69052e-4b0a08148a0mr125898621cf.20.1754725801027;
        Sat, 09 Aug 2025 00:50:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca334asm3273607e87.131.2025.08.09.00.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:50:00 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:49:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>, Nikita Travkin <nikita@trvn.ru>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Describe on-SoC USB-adjacent
 data paths
Message-ID: <7bptwqmqimkuixgo3zvwfafktx7sj6a5xzfcedip6vuudhwmqt@ey7cs7x2ucxr>
References: <20250808-topic-7180_qmpphy_ports-v1-1-718d7c52921a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250808-topic-7180_qmpphy_ports-v1-1-718d7c52921a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfX/OCGssF/14WX
 n9sbM8IeutqQTwMar+J4qXGjZhfnU7zjyn+L0KxB7+b6ML+iWv8usPJ+gunDoEMF/19T30Hnyu3
 0arSZAiN2IjsFgK2t2vFYn68KNv1LulU4LvahTQTS/bi1hZn+XWbxPs140Je51DdeJ/UWargDuk
 c+Jqh1l5Vh3cm7b1l+2oiCWsWRZ2AlmiGGBPUt+92gERycygZPSFdJpiQqeSLFDvlDSsJ95DJAf
 gjAgKpgoLsKoQN52dSohSnIfoADxxRY6ya0JzSyR+5fatJrlTteMTJgKGiVn6r1Ca2cpJlhou+J
 vNwn38kfOVAfzT/Tz1UburZrwQl4Ah33cdao8nXdY/0iuq/aajmbs0FwmuvyjGNR6EWyPdY+wR6
 F0rap2oG
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=6896fdb5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8
 a=hE8mw8KEZpgZAZYcw0gA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: XliAIUy9LxZHlx5Es9pqnQUwzR6nhfpu
X-Proofpoint-GUID: XliAIUy9LxZHlx5Es9pqnQUwzR6nhfpu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027

On Fri, Aug 08, 2025 at 11:20:45AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Define ports {} for the DWC controller & the QMPPHY and connect them
> together for the SS lanes.
> 
> Leave the DP endpoint unconnected for now, as both Aspire 1 and the
> Chromebooks (unmerged, see [1]) seem to have a non-trivial topology.

If I remember correctly, on SC7180 the DP is still routed through USB+DP
combo PHY rather than having a separate output. I'd let Nikita to
comment though.

For the patch:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> Take the creative liberty to add a newline before its ports' subnodes
> though.
> 
> [1] https://lore.kernel.org/linux-arm-msm/20240210070934.2549994-23-swboyd@chromium.org/
> 
> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> Closes: https://lore.kernel.org/linux-arm-msm/175462129176.394940.16810637795278334342.robh@kernel.org/
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 48 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 

-- 
With best wishes
Dmitry

