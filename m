Return-Path: <devicetree+bounces-193174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C718BAF9999
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 19:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C9CA1C8812C
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6451F2C45;
	Fri,  4 Jul 2025 17:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H7ukLfzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92082192580
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 17:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751649692; cv=none; b=sxUmp+wWawr/NAAB1JVDeo8wfxDWdutpIBggkzcb2goMKMQ78jp86ZM8YThkJjE2zrTO1YSaLLxr3u/mE5ZCQn5cC134sOomD43DpPaEzK+/62WW3cLPmCSkgLOarL2aEy3aD6ikxXJXudYRDTApl0kDqQkDG8Ffo6L+WUMD8Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751649692; c=relaxed/simple;
	bh=Q0uBPIsCwgQkS2rC47v+2moqu0wd8x5l/Azb8wYoj4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jv+GjnKcC5Mdyv9TOnx2jGlkp/AV/O+5SfwVeZlyPgkw6t69vx3yZbm3qZp2v78/NUUfYG0tzAq0ZBjsr8kjiyz343dJ2wNsyWy1Pnxg03O39pMae+Cg/5Y8lIz6cPq7eeh8eyPK/5my/+Lzwvkbvm4Uv7oYwU482RwrCgnvZbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H7ukLfzE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 564AQQBl009985
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 17:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DYd1Y/aOqrQmhXBusd+shb/Z
	pX/EE96WqbgSK3mRMUQ=; b=H7ukLfzEoG0pXiV5Q1DEnsuRB4aJ+wt8FqnWDcJu
	huGLhlMNlWi8HWvbovEsWZDplRGs/MCp1gGcy+Ev5wqKwzQXtnmT5AKjGY7v42k/
	HT9T/udHQWYW649HtPaSKRKaaURhlaUUO3GfOMZQ4qEuwcurYPHM4z3Ts1+re746
	43mvxnXr4doxv/0z+m3JArYiBu6bt9a29SWWm3LICfAfEnJpiENt5fjMYCVi92G1
	M5T2KwKeBcY2tVRkgtFcUaBJGd61nYebtr9W/zHHHR9lSRnApOZuB8mtR7uh/5KE
	ATk0rq8KqkgzoNP9KsAqldhjwsPnB5MlskJkMD/f7dUIrA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pd6w119k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 17:21:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d15c975968so184967185a.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 10:21:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751649682; x=1752254482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DYd1Y/aOqrQmhXBusd+shb/ZpX/EE96WqbgSK3mRMUQ=;
        b=cLlqwflQIHOfIoL6yj2HVPgZdSSabHubRKitJZYZ+U9uAIjMasNliyWueCFsZj9P9W
         QiOQRci8IL7lUoIJ1x+OadywPc0qJcnCh+/52ai/2WL3KghCLI/74od1J3hy/JMzRkH9
         RtlOS3OmShpYKgmHmoweK7uQcaQc99N17xSW+64DLo1a76A8/B66yNERmSkqroVoLnPK
         r5LkofjB8Px9Ot/UcoduDeCobd3ImcZfGfKut41p8zkEd4LvCicwNCDR60ppTEKX3i2a
         sLBDBImEc+ZA37ubx96CifMF30x1ADPiPR+K/835+aj1luUjLZ12gnbk8M4qcA2jsf4j
         a8Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWaCcKNxejj5PvVGoG1479vcPxpwEzQsjjQZvs9f4qKz9zEdaqfN09F9vhKALv5BWQUplfoX850e08n@vger.kernel.org
X-Gm-Message-State: AOJu0YxFYI4cf/LdiU6NoEhgpQ1W2qccLaHncyr9oP7arjUfaSKDpb60
	w4E2zJXBH928iiIko3dVVGcqYXImm8b8ywYET6KInlIKw+f1mPEjOwg/BhSRpHHSOw0GlUxuybh
	UEmRMnJHRPopXK/e1qYsOeSUx9HDGMuCc77fNis3rUPrLuzGruHHEdXmEHPDtIvnq
X-Gm-Gg: ASbGncuzxmi5L3YrXwbIJCNjDE0lwipN4EWuGa2YLiLVrokMj/7sjG2SXmr3DvvFyhb
	WNBcOwqFA1j+zAG+6hyC0Mn6wtQ/LP2RVzRzf9US0e6x7CzvFXV7dRzojIGwgx8EJDolisK0oIF
	z1hNZJrZraH6GCRu0eMyIAxxY8GEJocAOTtQwxhhZs6sTaQcNvZXoLYg8TEBBoV8er4FO1Rsux4
	nngUvQyBN2x8Fp44afk4GbUOdEYeE/xLRdXu9JI3V3hxMzYBBwJiSjHQuLKgFo1Olp8eioQhZmj
	viPpRYJz8SfAyv7N6RlkoikCABKvcEU/jprIFGuciWoeszrOluRA6IGV0b7ZEboIk4LrQcq4oyv
	vNIjN6kjKaKAV4cbHw03GDowE7aVWNtNRZGo=
X-Received: by 2002:a05:620a:1aa1:b0:7d0:69ff:385a with SMTP id af79cd13be357-7d5df181d6cmr340761685a.58.1751649682229;
        Fri, 04 Jul 2025 10:21:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpSHb1K1F6j7rtF41U6JYdzqqPCY5hlVllAFAv6HMtb8MQE1920mSMFj6b/sYXv0mfka0yuw==
X-Received: by 2002:a05:620a:1aa1:b0:7d0:69ff:385a with SMTP id af79cd13be357-7d5df181d6cmr340757685a.58.1751649681648;
        Fri, 04 Jul 2025 10:21:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556384952e9sm301641e87.103.2025.07.04.10.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 10:21:20 -0700 (PDT)
Date: Fri, 4 Jul 2025 20:21:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v11 01/10] clk: qcom: clk-alpha-pll: Add support for
 dynamic update for slewing PLLs
Message-ID: <s5fknuvs6w2bgyr65y7ajiyfk2ph5un6vofcxpcz4js6wcybbl@ab5vz4frdigi>
References: <20250702-qcs615-mm-v10-clock-controllers-v11-0-9c216e1615ab@quicinc.com>
 <20250702-qcs615-mm-v10-clock-controllers-v11-1-9c216e1615ab@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702-qcs615-mm-v10-clock-controllers-v11-1-9c216e1615ab@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDEzMSBTYWx0ZWRfX0ic1/17E5LC9
 Q7r9OMRM5/qgBT/kWGlt1+bmW7jbAW+fDSPONWfSdh6qb07RlLMp4oG52x9w2FSwpxkKrphFICX
 USBipFBpGXdPZZGG4AgrJ74Ps3QmeCLpotQM0J9Ac805PsBp+1Trebb5Bq5YLEhFzmajuiEv6yg
 JgVVCs4B5oPocH0J9toiSLZZ8wbyh61DFgWBHFx0QcNGf8XN9iBrIRzGOrhGnFWYrA9t7wb9SII
 z/rusgWBU2tPeVT7abz+IsVg5CkWRgxafbN/9H4e+Bq0eQH/Hmv63URYhu3Xk/pef1cWDAmEYu4
 45oECQDJVPTtIfgiS1IrA5xp/2/DgFM3bCrZS187fbH06qKUJFtbcCiht4lUOoZUrVCh4nUWTda
 RKHaOON2r/PA6M8syzLA1gFHYX/7rH04t0wmoCRMjrpI9oFfImXHo+6yTc+Un8ZcA9Tvy0SX
X-Proofpoint-GUID: 07-QFFM2pGUXhwSaB845o8ev89-rkHzz
X-Authority-Analysis: v=2.4 cv=UPrdHDfy c=1 sm=1 tr=0 ts=68680d93 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=0A9y-nFg0dDz6qeF-BMA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 07-QFFM2pGUXhwSaB845o8ev89-rkHzz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_06,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040131

On Wed, Jul 02, 2025 at 02:34:21PM +0530, Taniya Das wrote:
> The alpha PLLs which slew to a new frequency at runtime would require
> the PLL to calibrate at the mid point of the VCO. Add the new PLL ops
> which can support the slewing of the PLL to a new frequency.
> 
> Reviewed-by: Imran Shaik <quic_imrashai@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 192 +++++++++++++++++++++++++++++++++++----
>  drivers/clk/qcom/clk-alpha-pll.h |   1 +
>  2 files changed, 175 insertions(+), 18 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

