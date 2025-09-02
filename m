Return-Path: <devicetree+bounces-211616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D38B3FB19
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D50622064AA
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC2C2E541F;
	Tue,  2 Sep 2025 09:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="df44LpFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA4223BCEE
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806543; cv=none; b=X6FCsW465io1Kbr+GgJG0ih6btakRvWhCo7K1N2R9n0hv854evJFgTtT65zPYWv8ndNL32nkSgptqfuZpGKoG2uAZiQhe3J7DdV6/lBteRGVlGPFTCzJ0ZJeky8+/HJ/ePGJR3TgTQXVkN6DDAV+1pCdexMgwQqNwOplBYD7c+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806543; c=relaxed/simple;
	bh=IMgn8iEReuyiC85UpkcU0ob1gLtKwdzA4NluiAoThVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zfbzduk8JZtTwNr6yZMVY48dTVNimVLib4z+U6hPzXXOiyoV2HdF8JfoadJ6TEet5b2gOs+k8jcWM9Ti5jGaLhUA3QjHRn2726Ua2Ktyfh5AWikymAjiwwLAKdUiN6GpXhVJTnvxPt6jNsYkcp2a0muAk1AQF5FYECb1CZwSjxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=df44LpFW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RmKX024987
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 09:49:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ef0edgZ/9neE8uhkiRDCZwng
	z4JTifOPA35MBTbIahA=; b=df44LpFWVR9fhHJ3FYUk3VZt9dD565gwO6w1Z10M
	GT/4EpKZfqfGDw+OssvwXIkml8BcKYZyikE3SMc6MKbhyrPHt6a5+e4Hp4dHcIjk
	e16YpjM0zcW7dztmy7qn3FRPq/aZdb3hSFXQqsEG5TyDdNn/1snsMGq9Y126lL/E
	3MXgqj5B53IfeE55sklNjY590QFtVb8mwJr2cVr0HcDxkhwxWWmePKGcvpdn/dvR
	Dbgu+oFWKD5kVLZ2DiwYK0HgMV4WD0YNyIaoiaiZ0pxCsucbIxKYxHvymUKbsNSz
	E5ETn3eaY5YNEizL1m9Tu/eqB6364D+vljm/vUo3+4vOmA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuycph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:49:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b339e7d107so24695581cf.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:49:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806540; x=1757411340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ef0edgZ/9neE8uhkiRDCZwngz4JTifOPA35MBTbIahA=;
        b=lcHlLItegxnMqCPw7xvU9JK9J+FsySbplLcrmcv+oGqmdaKUSgTd4rwHLywDft6W1I
         IH1RWxzy2S601SOk4te+ln9tGhWWgUHzSYPVZpaG8WSvmscn6U7KJ7wV7mmWAik/S89O
         +QLaDgtPYGgm6T1ttujv4bvsxzniai4vvpCQlErANxxOp3vP6SP36jiqs1IbRrID/nUG
         c0HYPYxvF7+QTuGTdzZZ9JM7QLpjW7R4eh7daP8y/xwori4DBAdNDdh4mFSiPm2Ezz5j
         M4WVdI0EqvdsWjwdSbfkaKdOMFjXtDlSUhPoxOWqlN//Rpyfnk3SYod2FlzQdmv50prY
         XfaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeY97f70r24lIiwqfvXHkOXOegLUq9dH9lCS9iPSfUs1/8fCImERWPcaxzsT3BJSwh5/71kqoYdP7p@vger.kernel.org
X-Gm-Message-State: AOJu0YyDZcy7RTHiJcglU1oaZ26VdtEVscy0XpDccfGOwnomagPkjBe9
	kZ0mqGE8Vu8Dt6isZkxb0kD9as3MlFJFDiAP6HBYZX2i12vMMRywzUlW/cjtNdnmtcs9oZ+cD7s
	Uxm+Z35zc0GtZa5gm7azztNXeOlf5g9LHCrUOPHrzt4KSpYH9bBOi/eztWJk2CFBl
X-Gm-Gg: ASbGncvLWFz8A0LqZQc01YsHt3cWw83QjKkHarMDzhFnX5/PeNbd3XJKj15DIFK6P9E
	hUl0UVL54eiLymNjiwOrQh3E9mSxMMXOnZbrPxFfUiL0nCwhE23LYjse/gqKzg2Feq+TwmirsAm
	PsW3a9Doyz9UBiPkZC81IVjlGpk5DeUhp4ewx5DA401QxUhB5YBM7vlmZQ98cN0r8EgJNs8ndD1
	mcJAw1YFeKsZEAXFrqYc8/ndL69e1+M+3t3lRtGu2d1GeHEPw5N9zLt5xCA2/0hFn1YilEdIwKQ
	FKZbnsgZyvcsv7dq6Un6RQ+J4Y+HWXUJWxsvtd9Dv5mlh+8NTpwxEErhPkzBZKqA4/HPUjbtjdu
	umZK3VN4dCOsyJmIvNGIf898gTVn/v8uKHINIa2KwN9uV++DBRh7N
X-Received: by 2002:ac8:5f4c:0:b0:4b3:1c48:e9ea with SMTP id d75a77b69052e-4b31d8445e4mr81606491cf.5.1756806540167;
        Tue, 02 Sep 2025 02:49:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZKU4HE2HJogDoRI/mFySjKfrG/0weGrNzkeug/yUx/r/706E/wXqTZfTWe6WraRHbzYq5gg==
X-Received: by 2002:ac8:5f4c:0:b0:4b3:1c48:e9ea with SMTP id d75a77b69052e-4b31d8445e4mr81606321cf.5.1756806539674;
        Tue, 02 Sep 2025 02:48:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f5075c85sm3350441fa.50.2025.09.02.02.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:48:58 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:48:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 2/6] dt-bindings: display/msm: dp-controller:
 document QCS8300 compatible
Message-ID: <tvdbil5fhgntj6wx235ihum6dxy673ekdlpmv2qath5r2o7f3l@jynol3ns7uxb>
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
 <20250901-qcs8300_mdss-v10-2-87cab7e48479@oss.qualcomm.com>
 <20250902-speedy-overjoyed-dove-edf2ee@kuoka>
 <fe2867dd-50a6-42d8-92b0-0e29fa7691ee@kernel.org>
 <e59fca7a-4145-4aab-80a5-8305f935e8d4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e59fca7a-4145-4aab-80a5-8305f935e8d4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX/hPjhAW0jMk4
 KlIrA9VM4ASnqhoEbwEan77rkxDhSKkmvyGw4HzhJZ5bJM9H/oscJBQLtNN9nVVhUfMvtWg1Sv7
 hwJydZ57g3QWJ9+FpcHqByaHtf3yQ28ov6BAa7867+DK/zp3FOhLWqffLUPvVTFr7RO83WIAKiA
 fo/+h7zzBfM7UL4NldwRQnD80c70mbMPdTpwwKejoFgwMza0/ddujsx0cWG1u2nqA8bVypYxmbP
 LDmJmeo6E8qkItEbjGDqp72JjshnuQe7PYVSm0ouP35IAV9D37Bow1OnmacKyoYuPo9Fsabgnt/
 gZZ9tE39yKFp8RnJ2j+EmotHajnmz3iAfqL/i9maj0oAFNv5GZPbC0Y50GP0ALbCPlM6vJmm5AZ
 3qz1mH5r
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6bd8d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=lf_M6NTgIIccHnlT_YMA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: jGLIhFSVcpe8FaBCb44_J3H6yvNb6XQj
X-Proofpoint-GUID: jGLIhFSVcpe8FaBCb44_J3H6yvNb6XQj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On Tue, Sep 02, 2025 at 03:42:55PM +0800, Yongxing Mou wrote:
> 
> 
> On 9/2/2025 2:41 PM, Krzysztof Kozlowski wrote:
> > On 02/09/2025 08:38, Krzysztof Kozlowski wrote:
> > > On Mon, Sep 01, 2025 at 05:57:30PM +0800, Yongxing Mou wrote:
> > > > +  - if:
> > > > +      properties:
> > > > +        compatible:
> > > > +          contains:
> > > > +            enum:
> > > > +              # QCS8300 only has one DP controller that supports 4
> > > > +              # streams MST.
> > > > +              - qcom,qcs8300-dp
> > > > +    then:
> > > > +      properties:
> > > > +        reg:
> > > > +          minItems: 9
> > > > +          maxItems: 9
> > > > +        clocks:
> > > > +          minItems: 8
> > > > +          maxItems: 8
> > > 
> > > Clocks have only five items, reg has 5. At least in my next from few
> > > days ago.
> > > 
> > > Nothing explains any patchset dependencies, so this makes reviewing more
> > > difficult than it should be.
> > OK, I found the dependency in cover letter (I was looking at wrong cover
> > letter), but the dependency does not have relevant clock changes, so
> > this is still wrong.
> > 
> Hi, https://lore.kernel.org/all/20250829-dp_mst_bindings-v7-7-2b268a43917b@oss.qualcomm.com/
> dp-controller.yaml descriptions for regs and clks have been added. Compare
> with SA8775P, QCS8300 don't have DP1 controller which supports 2 streams
> MST, so its minItems and maxItems clocks is 8. > I suggest to slow down with
> this patchset. It's v10 already with
> > simultaneous other changes and two (!!!) dependencies.
> > Sorry for that, will wait until the dependencies become stable before
> updating the patch.> I don't know how I am supposed to review this.

Please fix you email client. This is garbled. It mixes your text and
Krzysztof's on the same line.

> > 
> > Best regards,
> > Krzysztof
> 

-- 
With best wishes
Dmitry

