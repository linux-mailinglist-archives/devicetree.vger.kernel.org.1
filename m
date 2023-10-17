Return-Path: <devicetree+bounces-9350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 443B27CCC29
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72C121C20443
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:22:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B67C2EB15;
	Tue, 17 Oct 2023 19:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="PuB1LbVx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03B42EB04
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:22:03 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E0DAED;
	Tue, 17 Oct 2023 12:22:02 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39HJKJYE001291;
	Tue, 17 Oct 2023 19:21:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=qcppdkim1;
 bh=0LQuUlcaFUHetJiym4qKpAFghbPfRLvpwUs9ECHtN7o=;
 b=PuB1LbVxtgWCkaW5m2DPkDGTCxcBAmnpp4etA7IsiOmax86tX3EHLtSApDnQWIwUtXPu
 spw+LTpgDf6zWDnalUyLu5sjIOzs72rmpOSK6bXXF0/6CLMzne1YV0cY7/JGQozI6x0M
 pWVDu2qGkSIw/9ZNK8p7cNM5lgkWLDxRcT3JSDom9giM/WU1yDzCbEAC4NDCKQZvDul3
 9OV0Bz8ns3hH6vuf6dvyv8LxFaYq2facJkOdA6N+DauyfRqgX5uh77xnsbsHy3tMEAFv
 20Clp2GhHXAnMcIFzNgyNxrwIjz9qjP83AYTs5bsfKgF57texZR/C7m4Uj5XoBeiJzLj zg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tsb7xjvnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 19:21:51 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39HJLNYW006533
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Oct 2023 19:21:23 GMT
Received: from akhilpo-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 17 Oct 2023 12:21:16 -0700
Date: Wed, 18 Oct 2023 00:51:13 +0530
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
To: Rob Clark <robdclark@chromium.org>
CC: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie
	<airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, <cros-qcom-dts-watchers@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "Bjorn
 Andersson" <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/7] drm/msm/adreno: Add ZAP firmware name to A635
Message-ID: <hgpte7bfyjnhbxx2n3kxjl4yc4k536x5ljanmbyuro6rnnv6cs@3gtwwukp5uag>
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
 <20230926-topic-a643-v1-2-7af6937ac0a3@linaro.org>
 <43q6mui3lofa4rqh667o54b2qcbqn5fg34ss5o7y7k7uxbxsro@dxgovofsrvqx>
 <CAJs_Fx7WkdhY31aP_buZP+b7ihOOmE8zBZFOLZ8z9uqcNmEhVw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJs_Fx7WkdhY31aP_buZP+b7ihOOmE8zBZFOLZ8z9uqcNmEhVw@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: cl4rbfVQDzRvzEbrtwXrLKy6DPQYGpYW
X-Proofpoint-GUID: cl4rbfVQDzRvzEbrtwXrLKy6DPQYGpYW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-17_03,2023-10-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 mlxscore=0 phishscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310170164
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, Oct 17, 2023 at 12:33:45AM -0700, Rob Clark wrote:
> 
> On Mon, Oct 16, 2023 at 1:12 PM Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
> >
> > On Tue, Sep 26, 2023 at 08:24:37PM +0200, Konrad Dybcio wrote:
> > >
> > > Some (many?) devices with A635 expect a ZAP shader to be loaded.
> > >
> > > Set the file name to allow for that.
> > >
> > > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > ---
> > >  drivers/gpu/drm/msm/adreno/adreno_device.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > index fa527935ffd4..16527fe8584d 100644
> > > --- a/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > +++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
> > > @@ -454,6 +454,7 @@ static const struct adreno_info gpulist[] = {
> > >               .quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
> > >                       ADRENO_QUIRK_HAS_HW_APRIV,
> > >               .init = a6xx_gpu_init,
> > > +             .zapfw = "a660_zap.mbn",
> >
> > sc7280 doesn't have a TZ and so no zap shader support. Can we handle
> > this using "firmware-name" property in your top level platform dt? Zap
> > firmwares are signed with different keys for each OEMs. So there is
> > cross-compatibility anyway.
I had a typo here. I meant "no cross compatibility".

> 
> I think this ends up working out because the version of sc7280 that
> doesn't have TZ also doesn't have the associated mem-region/etc..  but
> maybe we should deprecate the zapfw field as in practice it isn't
> useful (ie. always overriden by firmware-name).
Sounds good.

> 
> Fwiw there are windows laptops with sc7180/sc7280 which do use zap fw.
Aah! right.
> 
> BR,
> -R
> 
> >
> > -Ahil.
> >
> > >               .hwcg = a660_hwcg,
> > >               .address_space_size = SZ_16G,
> > >               .speedbins = ADRENO_SPEEDBINS(
> > >
> > > --
> > > 2.42.0
> > >

