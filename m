Return-Path: <devicetree+bounces-212728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A0B439A6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40A87587E00
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01A42FC001;
	Thu,  4 Sep 2025 11:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuIltYMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEDAEACE
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 11:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756984409; cv=none; b=FbC5wfUFGZl02nE+17AeRHgNb156++oxrF92dYRcVAbf19M1KMeC5q5HixZo9nDavGGtpq/0QWQXNZNFB9hWlFOcp8+qAtPa9+o0RmnCGId8ejDyHLABroBIzpxKt6E0OFPXI4PMPuh0iba19XFpv0iL+JZgJvTIOvl5yj8GSpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756984409; c=relaxed/simple;
	bh=xabmvkkMds2G1ykVMI0iIic3bnlXV5PZ9lhH9NfLEqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UegJdqNouYgIj/j2fMSPRKO+5kXfkoWDQLFemRsDFKIjBHGdR8TaP0LoN7T71N/tewOYhYZAbE5btHIRp26y7Pw1PzDsy1WfHGZiOcJ8bj5NmovmnIp3joc+nsYrobXnagvBvgFXNtsdObBec/wvIp3UUaE6sao48tKbxFUxvFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuIltYMk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XSPJ007991
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 11:13:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ULLB+9K4Q3rvhisp74Ypegx1
	/bn4JOB/4G9A7ygv2oM=; b=KuIltYMktCNubo/2o/omv44YQH4j5GcBNFkL8lHQ
	bIxcz3Pvwd4uxYp4Pt2tp8nYHNbwotjTMLz+/8WQaFs7554Al8i+7Pw9L9n5Rbhh
	trDCsnQBPYcGKqjg5/XQ/i780Zq+7Kw+9qITMkLl47Pwft3ETM1BLruUMKiulzeJ
	eq6GiBs/CxlBcmA7lxLgvz4uoxk4cW8nKkGX0rMpc+PqlSQ95++IyTth+rMf1prf
	76VweQwvR8+IVPDXfNgoXjNwsvbFteYWv0NrQxIm0D8Oaii+n+lxs/VGYPuGlWV1
	fUr15ce8WE5+5lNX4xkZr9/2h2b9HIlShUx49mFYeQrPvg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8y5qc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:13:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b335bd70b8so16124101cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 04:13:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756984406; x=1757589206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULLB+9K4Q3rvhisp74Ypegx1/bn4JOB/4G9A7ygv2oM=;
        b=mw5OkjMoWeG4cB8Dm91jJUBiGY+VHe82vVgT1wZ+DZijtDDglzKBr6GjAxc1QN35F7
         Yzf5sj5IxoozkqEnw1Yge4m5adu918OQWzVPtHabtYw5Wk6iMtYXfsVvZdAZ6z2FGUG+
         NQSJU6jO9c1R0g8rEmqWlYISwdl4PP+njpOF8YsDw0PZgegvFnn7nvsTjmXcaW+HeTpN
         9uH1QlMkruATfCxnjQbU87UPGBTHDjRyw8zYk0ESsyFFUpwYqvVKEMiRFSmNFTX13lPQ
         Q53uQb30DfYHR5O/6Jp44gKwLB8cNgBMWyAT8zKPjekiGGYHh73W8Jy1wTD+J8cftsNb
         +8aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQvD4PETrDiyhdnAvXbfpAUgJIvWEOYc/SQkYTPOh9PKd5kcfrDmPprQaiWvhZu+N+weoD3l2h+xbD@vger.kernel.org
X-Gm-Message-State: AOJu0YzFoFPKzPY7LlAdA+rTYQ66IDFX7T+yNpegad9WyZhG5vMA2W9b
	J/fxwZ+SIOovNeZzI1YxgABbMP41iTCFzToK2uGI3FZaiGDK5WxCUSBNap7zHNxxft8Nhu85nB4
	u++i7tRFeuSd+/tamixuUTQyfTnNEN2XdJBY8xqDrXiq0WjwSWdzGN0J72Bgz5VsQ
X-Gm-Gg: ASbGncu85D4fJJiTVS/pYB93BaU1haApf0jGehBlqXl68HW38+ARbOtDYKrKCmGeOhz
	AVOerBDMezPx+wCtxe3VCKsOOtMLBL1rvpOokJ2CExmKZC1bezGhiydpRWaYsbXoobtvhR9fyR7
	+b60bQ/AqYesAWGpOzKR6Y80JgKCVgOuQ4o5df8eVYzsMGNWR94zFT2PEayLjKGqI48EqN+IVAn
	bVWAKWoOPfla+bVV6AjhJzEu7EVdAgXBxw0KuWoxg+wuerkI8J2Vk8cys7rgCUpYeXLs1cdFBoG
	DJYbwmOVG7EWEvZ+NJPHnlcOnbA6Nfy0ZDzRtFMk6O4IUtk5/ImqV0m2/1nHipUOs/sbLGGCryT
	1rdQV65Hs9/Z05yXZZnZGYEEg8jiAmyt1jlLwWwLGSq6Cz4lUtUJH
X-Received: by 2002:a05:622a:3d0:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b31d841b8bmr206347051cf.28.1756984406480;
        Thu, 04 Sep 2025 04:13:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExtpn8wmXH1fQWP57ni7jX6R0VHwMOxVbasxblzi9W2aBLMBFT18vMVRsZUaHpRFJcGl1jqQ==
X-Received: by 2002:a05:622a:3d0:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b31d841b8bmr206346731cf.28.1756984406044;
        Thu, 04 Sep 2025 04:13:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad0718fsm1116900e87.112.2025.09.04.04.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 04:13:25 -0700 (PDT)
Date: Thu, 4 Sep 2025 14:13:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
Message-ID: <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
 <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ox5xDSeCezK_7wx2byZGpF27tQoSzFfD
X-Proofpoint-GUID: ox5xDSeCezK_7wx2byZGpF27tQoSzFfD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX9nRMK47gGFdX
 PJok23wpUtBOPQFldnmXpV6rEhrCZw0STAi+zxkEwVA5YquqknOmDASRFKKe9/XXzCk4tCcAQ1S
 +KHWhIyYzI27XihLbKtqNhbdUcsJ1yVgSIE5iaPcU8v+0FcpLKUj2JduaD9iGxW2v44B8bWio+J
 ZAEPPXh72nB1j5FAMCXArSSKtu+YWM8dQpl5OSGOa7dK2yt42074Gs1kkFCYYT6STBH7Ltn+7OA
 /VLvU2avQdfhxgbU6jdAbvXmAerDVthAf+B954g1uWBEzxh0KxFvQLJKJjfxrAEaedb+NKV2G6f
 Vx0akdwzDqRjHsxtozEUQdxVTf4qaJDhfQxyT+HDCftczQhgMYqfLKE0wQ2p8fhQltOh//7nPFA
 BOFDZKNN
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b97457 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=YY9QM9cTantD599Z194A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Thu, Sep 04, 2025 at 12:47:43PM +0200, Konrad Dybcio wrote:
> On 9/4/25 8:55 AM, Abel Vesa wrote:
> > Add the missing v8 register offsets needed by the eDP/DP PHY driver.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> + a couple folks that I talked to about this lately
> 
> Please create a separate header for this, Glymur contains multiple
> "v8"/"v8.x" PHYs that are not identical to one another (or vs ones
> present on different SoCs), even if advertising that revision

Is it about v8 vs v8.xx ?

> 
> It may be a partial match, but there are also stark differences
> 
> Konrad

-- 
With best wishes
Dmitry

