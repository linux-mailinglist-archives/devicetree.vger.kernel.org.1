Return-Path: <devicetree+bounces-161576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90030A74A02
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 207D5188BD53
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D110725760;
	Fri, 28 Mar 2025 12:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="blnYZH+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D56017C77
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743165936; cv=none; b=NVgM5acvC97RDdunpxepqlMZOZK4rcrnJM8ot6HO0/7McfsQMo/LEFH/TXtIJdmwHh1iINZCATXfQjYbcgmqxI9eY1FH+NXJM/RvUe25GgYgxDjez5AiJHRqiAiaUtbupk/8suPKhzTRL9Pl14m9YxdvkA0G/QHsSeqk9GKSEAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743165936; c=relaxed/simple;
	bh=ZDj9EWZcyiHklTiN3aF6Il1wzX64rcYAEdXgYzD2WKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MiK2E36pP55hEgmW6wStZkIMyznQVao7iO/JwG4acSgKPpnCD/Jroux5gtvSzZGkWkeqJoKaNiD8OaSboUhatfgUNtOksBCqYLtQs0YaTeHmHw+DUkQgWdF5WFfAwp0IRpyFCmL6Tqtdmtny/fRXUndLLvk0yRmIfcSp8ssvg1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=blnYZH+h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52SCjVK0012440
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZvDweKJ9jTquauiqzG4b1vQJ
	jhiOyV8IbduQk2WD+80=; b=blnYZH+h7EjirwAzcI4rQ32cFhE+R+dQR+LBH9aO
	2eGnXcQlP/4wesPahwAB1U2VKXUr8HjJsyyLxVuEs6cOQzQWCHcAq+MbpX35wIB3
	TFRsOpUfKg17qbB/6ot88MRyPrZ4VNlfa7alYOS0pcIpa/vOJzG5LXOT21+oB9PC
	Jzmy/zxyo2OkYViVK2xfWTgux19RNXeAmxyRHGvYCGbBea/gO0dUKBiWrv5YHvgq
	/5iLFn9HMP8LQN8iRFkZmunDXcGt/jfugSokcNQSUEshyYKjn4o9o8jABM+OP7VG
	6+wu7iLAm6VvBOXHG6RqbQVb6jXIiSPvryTu9z02LzNJfw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mmutpge2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:45:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3c8f8ab79so314498785a.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743165933; x=1743770733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZvDweKJ9jTquauiqzG4b1vQJjhiOyV8IbduQk2WD+80=;
        b=edRi0JbQPQzMhZY9y22cnDIwM3aftHtEilnxCVEjhzqLhpo8nQwhy8h0cIJQkYRbMO
         v5AKjxm4dCjQJEpFofWqTVMMnlv5Fx/BDG9mmBk2kMY78sC6jmfWUq7OjpsoRohSLInF
         egqoXV1lYdOPrtvQ2e/MceHDy1JthXMgPA02glPYWgJfqKffXoQ002GHEVTF93Oo6r8N
         GG8SNdOVETZs0FjOHolvvDBhofgpJNM+JdLREXOKnwjdyfxVEctErqQalQPtGTcmoyyU
         hVA0dE4Z7ak0ow5d61YMFQFtdXqISj8etAtlolm/QiqpNTqquTKwEfG2XRUun5v47vZg
         7oMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPF24ukRqeFiyLMUXq0z4Aa438c1evAMuxZJ+X/wasgt5tQGY4RbNYIiXiGsbPHOrwFgW3cNm7Nj0H@vger.kernel.org
X-Gm-Message-State: AOJu0Yww1zNqp/UrQGLb18b3Uh03TGSO8IxRghlwlqp6CDvjGCyGczvY
	BmImaH5rOXx6dmjjdmqkCi0cMinm9SXY/TTuCXLMzopJtCu/btlfY+0jKKMAdqeBuyWYuo+C1Dq
	Pp3pPSzXBnSXya9alJZo5SgoBmmBHdLqF7KizOtSzlNROtGPHR+4pbECRP5VS
X-Gm-Gg: ASbGncvcn05tkOEWXOiawVCeESQV1dcrne/IRH0RhDiOY+rSYtT4eeUzZhMLrN+MwQD
	ETjx9ot/cyHsDmhxyyJ/zYkrCJIlE1JcoOIlq+QLQ9p4eGXCD9D2eGqbr8OxANXmeYNaDMBU6D4
	ZR1JeyxqjG56w3j0RTVOM1eSiqCo1YVHjgAyNzogEpCtsytftDlEqUBHX4w/QF3wmiL4wzrE9/z
	dWRt76v3kU7bRSicxEQZFcT13eULA32wNV+BuzG3DErKUXNM7GcYBiSB3yzmAinr8Qtih+cqXWx
	aueyEAghVzAJDUwwKPVWDT5gTuvmCZefIdP6TLpue2TLHYytsdjQmrH2e158ruhWefCFWGj6HWq
	3dGI=
X-Received: by 2002:a05:620a:4256:b0:7c5:5d9b:b626 with SMTP id af79cd13be357-7c5eda60393mr1455860485a.36.1743165933087;
        Fri, 28 Mar 2025 05:45:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjKaK0W01377SicHB6sGo3m+FuXvOv4Bo+AmDgxKUrLAkFj22Hu7JKxWtiIehA4px01G9TUw==
X-Received: by 2002:a05:620a:4256:b0:7c5:5d9b:b626 with SMTP id af79cd13be357-7c5eda60393mr1455852085a.36.1743165932495;
        Fri, 28 Mar 2025 05:45:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dd2b4c84esm3553171fa.77.2025.03.28.05.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 05:45:31 -0700 (PDT)
Date: Fri, 28 Mar 2025 14:45:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v2 07/10] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
Message-ID: <zzcd4pv7laryb2c5wkuwrhj2ih3lciqgxfyefj4qmi5clxftbi@ykpy42anl4jm>
References: <20250311122445.3597100-1-quic_amakhija@quicinc.com>
 <20250311122445.3597100-8-quic_amakhija@quicinc.com>
 <20250312-athletic-cockle-of-happiness-e88a3a@krzk-bin>
 <d64bf3b3-7c4d-490e-8bd7-1ad889aa7472@quicinc.com>
 <0220605f-3ff6-4ea3-88e3-09e602962a61@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0220605f-3ff6-4ea3-88e3-09e602962a61@quicinc.com>
X-Proofpoint-ORIG-GUID: jND8UU-tDIrWTzXsTaUuXtMTrw29ZOGM
X-Authority-Analysis: v=2.4 cv=MqlS63ae c=1 sm=1 tr=0 ts=67e699ee cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=6YaBRE2yWWFYFR57820A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: jND8UU-tDIrWTzXsTaUuXtMTrw29ZOGM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_06,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=734 mlxscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503280088

On Fri, Mar 28, 2025 at 03:13:57PM +0530, Ayushi Makhija wrote:
> > These both above commented from Dmitry I have addressed in the version 2 of patch 7 of the series.
> > I have squash patch 8 into patch 7 of version 1 into patch 7 of version 2 of the series.
> > 
> > 
> > Thanks,
> > Ayushi
> 
> Hi Krzysztof,
> 
> I hope this message finds you well. I wanted to follow up on the reply I sent. Your feedback is invaluable to us, and we would greatly appreciate any further insights or comments you might have.
> 

Granted the lack of response, please make sure that you've addressed all
the comments and proceed with the next iteration of the patchset.

-- 
With best wishes
Dmitry

