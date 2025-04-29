Return-Path: <devicetree+bounces-171961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E89AA0B7D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4B10164ED1
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB992C10B3;
	Tue, 29 Apr 2025 12:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jepv/vp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743C02139B5
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745929433; cv=none; b=igq12G4dltv4+6Xtk2eyP4WlALwHcceDCAqEPz4RNO2Apeg/ZVPbNdRD2sPmrGMXWbM/frStgRReALPCrqQ1RtasQCcmIut2IVk5mXHPykbHScHl9RilEEjqTXRp171YhX2AsrghpyGDhyCDtLgDNf4wY1n+YK8dMqDOnUxgerY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745929433; c=relaxed/simple;
	bh=E57J4dCmvgqlt1ThO9CEVN44k9zEWXIKqQnEEIIZA7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJPID59j4f7u4hRJqUVMhuOQZQ5ETTGXvGgYs2yCJ3pNNhbOk9JUz0npoi39J5BGArxEBoNSRNTtt/MScrjCtAfW/MdcwVOuBWY31k2Mgf3+33UOT6B4gIJhHms4KneHR3c5a3NRxCGNp/XNSnotM48nUJ7jQkkHDp7Kmdaigms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jepv/vp+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TABWIi015412
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:23:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mWPI8IBrH7hlnkBmEO8Qt52b
	2JZ2LdgusDzm/ZmxwCM=; b=Jepv/vp+wV4PAFttjELu8cAbXFsPwIV29w+Gx0Eg
	6S+1lTWzJKVUDMIkSbq6iFufXGAxdwdKKH0zRx4sHPHG6oUGySHVy768YCLlOjP2
	rtNOBox+emSg593ZEVQzvX63vlYUoH2ss/j6MlyHNXdUgFAAXIFLffIxRHsue1Fd
	xXRd9NnBe+c9Cjbzjru6lrF677kA5dn2oj5SFr40nVn+fruysjAKcfM4fSLqnKut
	K9tqjhzUxj1ml3GGZ/rTteRcjB5eTMK0W5yu4qKSsWJfuQmfCicudCMvJvnxqN1b
	GNqm4yJshWEACANApoM2uKrrekgVxI4/0RGTkjSDab5XWQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qjwvfmd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:23:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c9305d29abso1073230385a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 05:23:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745929430; x=1746534230;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWPI8IBrH7hlnkBmEO8Qt52b2JZ2LdgusDzm/ZmxwCM=;
        b=XXboSqhZWYQJLiFBbetlfiEApibjH5Pvntcp/ipdSJ7IFKkodaBVUh98LYY2RX45fR
         FhvXLR9+3zXogKX2lmOBOOKBpAqEKec3R77HTBfxjRxIsGkLoT7/TV3P4BZ500lhYHUh
         Pw0ejrPWAvbOrSNYwoYk90LHb+Ptz93aJO0k4SVJCGzrgP8E172bJsKMVwVO1TyPCTei
         jdl9fILt2PsIvkEkJdWQ85fT2KGulz9hD4bXNjMM7IKAF2X+l2ns+CJ6vrESu5HK0EoG
         FGCAis2fvQtirZ7r8sl/1G5jhu367kQX/Wi/7zcwBpA4f71GTRuSfcdsclLRVLJS+4qr
         CgxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQJEOsZJEdu8HfGWLOW03jwgvf5v3PubeJY8gvmsjuG3/blWf+a2qenvhUJ+PH4f0HtM3YDFKv3kUG@vger.kernel.org
X-Gm-Message-State: AOJu0YzalodMmBSVR/4X7gz+LnHZWFRSynTVowNiKGP+ty4N294FcktZ
	nymnf5z01qMwRuJ+Xnc9c4vw0qIMV790OXAk3YOjBrxpnsjWzqOugbYmdgNUAkUz4axM0X0De+y
	trmKOFc2JgT9a9fvOWHvvdYHJkkqalEQwg/dqgcDRuyRJ7+1jZnVVTjIzulH5
X-Gm-Gg: ASbGncsickz2BDnv4+2F88CJh4SyK8fZhw0LLTnEDrX5k3SOgNAG9wmnUB8xlPL5o1/
	0/Kr+cDwVWVbXhU0uxVMPl3jm0VvgT+qJTAZLUhnGNSd9svIke03/MIjbi/rERYwBmA25OEoxfZ
	LlGIx9Hg9mxVhKYpVy24XxDVLUWFOIKmG3p6YFQbwlS5mwER1CvR3yxjq/tQUpeuhbn18QOm5JY
	1LhzTuedA87+OoC+zkIK0F7gppnwVMgwHX1OXyAm7C4KXJDi0DQz9MCLEtmGVcjq2Vx7CySJG3/
	duVuzx8T8RkfXZvkbRrtLnCejBuBVG3GCtsk6gxU5o0h4lFaKUqHYkLNZuaE7dIwFnt7Usj0A+c
	=
X-Received: by 2002:a05:620a:6117:b0:7ca:c5bb:3007 with SMTP id af79cd13be357-7cac5bb32b5mr25637885a.37.1745929430407;
        Tue, 29 Apr 2025 05:23:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/YVYTF7AsqT0sUlkNbluJNYqiS/QEjcLK0UlrF+CJVw0ltMIa46t+oqSpGCfKt2bt7Fmb9w==
X-Received: by 2002:a05:620a:6117:b0:7ca:c5bb:3007 with SMTP id af79cd13be357-7cac5bb32b5mr25634585a.37.1745929430043;
        Tue, 29 Apr 2025 05:23:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317cfb49872sm24408651fa.35.2025.04.29.05.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 05:23:49 -0700 (PDT)
Date: Tue, 29 Apr 2025 15:23:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 01/11] Revert "dt-bindings: mfd: syscon: Add
 qcom,apq8064-mmss-sfpb"
Message-ID: <igei6wspjs7qetjx7nrhr42kbvb25yaldpfx32hyrjalajmcfg@qcshsrzwejxe>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
 <20250425-fix-nexus-4-v3-1-da4e39e86d41@oss.qualcomm.com>
 <20250428-prudent-hasty-pheasant-aecec4@kuoka>
 <29d15e93-8f5e-4cec-97b8-8592beb01d6a@kernel.org>
 <CAO9ioeUo_vO+-wuC4JGi4JfSMZx+JZkvLvsi=ppBD_LvuV2ZLA@mail.gmail.com>
 <676324e0-43a7-4227-8b6f-3fec97a484b0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <676324e0-43a7-4227-8b6f-3fec97a484b0@kernel.org>
X-Proofpoint-ORIG-GUID: 5D2nMQFWo8pqM6ORWgYSdTe1FRJicvES
X-Proofpoint-GUID: 5D2nMQFWo8pqM6ORWgYSdTe1FRJicvES
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA5MiBTYWx0ZWRfX0/6sMEcjqMW4 y9G80byE4pCjzfwhiLW5rOkL8AGI86eJNgYUZp6Js1g8T5JLk+GnKtOMM+WaQRV6Yxo8dIaEzbd Xqy0+a0dhF9Wz1pWOShOgWzftGh60N2CKfFfrB6KOaQcVu3WetEgB+PUd/DH2LzNX1cvq+bp9le
 jRxasrODNvhye7umIZ0g8Q9n3z9TFi70MFJ8aAV5P+53vZcp57Dcg9UcqvRwk6WY0vURfQDPqEp /eWZM50/s+0KyOXR4Evq5rwihde0n3PTbtBz/5pLO2gLSam1QoLk0YMlQzcfQrQObtrk39/KoYS isSo6HgdaedcOwdDs9gArfR949UiClgD/u46NStNSi4PrT/qjSZmvFSCPgDYVyIXTfZOS+gM0qp
 Qy2Bxk91GqRBjCbUv+DcbcRYZWl2t6q36Sk+1t+cqK85ER0MEvdh29eY8Yzaf02dkW4likyH
X-Authority-Analysis: v=2.4 cv=c/urQQ9l c=1 sm=1 tr=0 ts=6810c4d7 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CcgAk7be1liTUAj5SvwA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=999
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290092

On Mon, Apr 28, 2025 at 07:50:04PM +0200, Krzysztof Kozlowski wrote:
> On 28/04/2025 12:49, Dmitry Baryshkov wrote:
> > On Mon, 28 Apr 2025 at 10:09, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 28/04/2025 09:07, Krzysztof Kozlowski wrote:
> >>> On Fri, Apr 25, 2025 at 08:47:01PM GMT, Dmitry Baryshkov wrote:
> >>>> For some reason Lee has mis-squashed two commits, picking up one chunk
> >>>> from the first patch and one chunk from the second one. Rather than
> >>>> trying to fix it, revert commit 2c8de7df7418 ("dt-bindings: mfd: syscon:
> >>>> Add qcom,apq8064-mmss-sfpb").
> >>>
> >>> I don't understand: that commit looks like direct, proper result for
> >>> https://lore.kernel.org/all/20250318-fix-nexus-4-v2-5-bcedd1406790@oss.qualcomm.com/
> >>> so where is squashing two commits? The diff markers have offset by few
> >>> lines, but it's still just few lines and they do not matter - there is
> >>> no diff/patch mismatch from that point of view.
> >>
> >> Ah, difference in compatibles. I see the error. Anyway, I don't think
> >> revert is correct. Just add missing compatibles.
> > 
> > Why? The commit that went in is invalid, didn't come from my patches
> > and was produced in some weird way.
> And revert is pointless if you immediately add the same changes. Just
> make the changes.
> 
> When we see a bug, we do not revert the feature and then re-add that
> feature corrected.

That depends. If the original patch went really bad, we sometimes revert
it and add a clear implementation rather than just trying to fix the
damaged state.

> 
> Instead we correct the feature.
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

