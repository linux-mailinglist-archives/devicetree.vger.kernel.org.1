Return-Path: <devicetree+bounces-180068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD2BAC288D
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C7883B0BA1
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16A8297B75;
	Fri, 23 May 2025 17:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ghp76XFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0D18E1A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021129; cv=none; b=I84FIokJsNzvALp4oYK5N4jf3Z+KWsOjzQlJqb5c7hf5C6+tnxX70aDRWRASY8FIfQhSmm3NFZFw9gSsxlxSRfTi/PWH7rFYzAxPHXJxgWiHH1tTNSPjryR9YobApiM82Jf81HUTKTO8uGlai4MJhQP7ZfF0kx/qwVKDV2/+9EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021129; c=relaxed/simple;
	bh=PTxY6WsC2X2PekbIkKpboZ7KrDdYsMulX9h1YsZZXoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VA+ssOLruX/+BZk+ThF0q1O6O+D0AHyIle04YYSyo99EfSeLzL/SnYHMaAGPXjNuirXtpACXwDBxdrY0LxG+Hh8ddEoqsaG2oxdwJBM1gGMwQetAguSfrLeIBqNZt02mNNGcidz1FxCE6+T+4FEmx8rJRyZ7aQdLpBhGEFeGjB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ghp76XFy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NCgYGl028470
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:25:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Tdxr7rennTE7cs0ATC1cfBjl
	DLm4FEAfB3HTzgMnE2U=; b=Ghp76XFyViOTZmuKLNGaPfX+YY21BvRTVX1Pjzx8
	24l2Hax+UxAOQiHGDRLYN95kspK2EC4lHPvBU04cx+jENl0/ExSNsrTTg7drq70B
	cdwn036H6EwbrccgfkdLhSR1TXNJIreCGPtoI7+XMYj5kW7LSx4MPJMdrJ4LcrfL
	nymirLLHwGDmjl1HRlsmsyGkBp069NL0twLm60mH5rrAXy9jKIzuVIRJ7ZgUPl68
	QQbovk6P+Ei9V81usMdK8xMfVfUnPbTrmPF3EeYjDF1HVPBsjPBPgd1hSHa5Kn8M
	NMQT9/YMoNDjBEhBMgi9mjoObfPCaCieeudA9wksdw1gSA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95ts2jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:25:26 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8c0a83f9cso1156876d6.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021126; x=1748625926;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tdxr7rennTE7cs0ATC1cfBjlDLm4FEAfB3HTzgMnE2U=;
        b=Jt0rRMIslEMpdjS2MZbHZRh6FiJJs+SEg5rN6nSyh8VXCX38GHhIdHeWRWY1+Z0MGf
         8pnT4ryUe8WPHBjVVZxgZb42k2HdaHl6TGB5N/awM6dsyc7XXJH8AKD7+FWwKaZ85OCS
         vheBNdFmF30bWsDQwjixhl+r6Eu8Hby6ERwej5s9vXLOfz6Vrzyslt11w+keHnJRaiD6
         oEMrmt/7PrTng33ExztUT73auK6ZETHO6gfqntgVFaOrF6QqZgcEOqh6muOmC1cR/1d3
         JGo+mjtKXyENn4Dr75xgXAKKeDLXpwoCPYo8f4p4S3G83554i4VjUBjXg8OGfv0J2Jij
         FYfA==
X-Forwarded-Encrypted: i=1; AJvYcCWRSh2tK9+mlZZ+DG+1akvtBFBAlh6snXzoZ+WCfvlkIXlDaSrc/eTe1D0yxPlFV5AZSvwoz3ZuaCzK@vger.kernel.org
X-Gm-Message-State: AOJu0YxaGb65zpIdfLkjctsFJ1uEd7kZIZAX/YQd6/ohiR7QPbKTZDly
	JzYqDQ6HIX+6lMImdCOxVqiCyBrYBgPM4neM0/xnzADjXttUI0wxyYWZ4zDUu9Ys2X5WHsBAtzG
	VJ+hugbBfvvlUW/gYzpM0RC+MXvr5IH7zI5EYTFYGL/1U8QHJeDV+IVg81Jtj8jmT
X-Gm-Gg: ASbGncsGs4LjTfwTF77LdtLbIxAjqm2//Ndh3dva/UICd1bwxiivIv/fqoSDz//rAIl
	WSmVY8Gt2oNUpVi44kneHbm8h09ITt5ZZR5LTF/8jbpcomA9urEqjTRrgPyJLaLcZIpzzmH6F7P
	txfvExPIVDcGXVDPuV24Vpo3ETliQo/iNxFPLDH739/LaoZmyWep++4A2OlUe8z77U2ZMfeN3JH
	ceZ26IMSzExietFUZNoMTwZVtSpr88iRB46Fvzj32uEafK+E1yJpnHbsIyjLq5yPno3YdwBor8O
	QHH8nCwkehLwcR+gJPa/Yx5iQPGINuWNYZLsnX/Kh50rRAy5lGrunAgotu3inwmcwHLui6hbGv8
	=
X-Received: by 2002:ad4:5c8f:0:b0:6fa:9c1d:91d4 with SMTP id 6a1803df08f44-6fa9d152c62mr5086806d6.10.1748021126041;
        Fri, 23 May 2025 10:25:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF10CtBQ7MB0ocIQwHT0jdYsIXmmW0GyMSYYOoAlWH4uSN4ksaM2w4jkjkqRjHL4lOPoy7foA==
X-Received: by 2002:ad4:5c8f:0:b0:6fa:9c1d:91d4 with SMTP id 6a1803df08f44-6fa9d152c62mr5086456d6.10.1748021125678;
        Fri, 23 May 2025 10:25:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-551fdf900dfsm1958347e87.60.2025.05.23.10.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:25:24 -0700 (PDT)
Date: Fri, 23 May 2025 20:25:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
Subject: Re: [PATCH] arm64: qcom: qcs615: Add ADSP and CDSP fastrpc nodes
Message-ID: <il6g7ly2uousixbuqn7qyvgsxakok2fxjxejdmmsxfvoxcmzan@amdtirihhfhb>
References: <20250523103853.1538813-1-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523103853.1538813-1-quic_lxu5@quicinc.com>
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=6830af86 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=-UGrW_4Vx8BdS2UjCj0A:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: GOXSxU9ARtnb7LjizwYPcxykcEz2pmQB
X-Proofpoint-GUID: GOXSxU9ARtnb7LjizwYPcxykcEz2pmQB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE1OSBTYWx0ZWRfX/fQz1tKCFtz5
 sMtq/1GRX6OW3ZDLvoi2ODxcAqGQKNvPCSN02UL7mCH+3mdPjZG0OlfAGMP3OJOeNX3v6hqZmhb
 fU3YOGBprWywnibwVcVw3bXyA3rgdFlXYzJEfzzWWwPJf4Q5pLvL8K/ok2LYGi1SA290WNklu94
 Jxw3HMJwP/rMpBR01xMCRpw2HNsdly6u4hyxIBIBtOMs+d1mMkc9ZUyyLt/JDx7b3RbwRpoTnd3
 Dy8xgK/0Ixa4tciyaWKQIRQhD13Xk2kKhXks6fk7eQsB5Fvnu7b2vgMkbJrLdSqiS+yE3TmEZO/
 96OwDb1zzXlBOHc/hgn5GxsAbqoA5WBcLUbTWbTjalG8j0F7fS3fyeLp4n6cPu/JJA12iDxnvwE
 A76B4Q/mWuv9bztcgIlt5AXYpedFqwxeynGnsgvxb9d1+1+i2xf3vEABGInbu6iqj/L9hv1d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=624 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230159

On Fri, May 23, 2025 at 04:08:53PM +0530, Ling Xu wrote:
> Add ADSP and CDSP fastrpc nodes for QCS615 platform.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
> This patch depends on patch https://lore.kernel.org/linux-arm-msm/20250516-add_qcs615_remoteproc_support-v3-0-ad12ceeafdd0@quicinc.com/

That series needs to be reposted (see the response for patch 4). Please
fold this patch into the series. There is little point in having a patch
for not-yet-applied series, especially if it can be easily absorbed.

> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)

-- 
With best wishes
Dmitry

