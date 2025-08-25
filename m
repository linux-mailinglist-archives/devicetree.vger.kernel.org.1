Return-Path: <devicetree+bounces-209082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72118B347A3
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 18:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55CDA16EB01
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 16:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDC330100A;
	Mon, 25 Aug 2025 16:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tpp/9r6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEFA2FF653
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756139827; cv=none; b=nz+HERQgONVN3t3TFYAHsbxUTQca11ZiKDvEUeu7xZ0pqOjR9ecwbdKTZOwOY96niA5lFsZRmGDAXysV4JifJ/tSlt21hMq+FDbKrKaO1kNeogx+eQVj1nO3+a8R5jQml5no6QgvjHyOwgX0RBMjQPrwRvdQryzn/pOeBA4QohQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756139827; c=relaxed/simple;
	bh=dRjkmQyr4AfxMzpp6Q0dVQT0/GVtdEmvI6FnZNiPJBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qXdH2NF/fLd7hyvJcnbIQg7IX8JFkLBp8aJCsYgFPsuUQbqEokF+xTx1wzVnT/GfWNXPVJKdAn0aXGgNnbQTkFale/VOTmqRytzK5Hf6neSCa48o1le5yIH//jRX+2M4bEiLs1O68YLLsri1rBbgh3fKDJfYaDuO8lLxsxoeb8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tpp/9r6e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PGIuZ9027709
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:37:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4Al2oxJOnZAhMVrumUKzRD+a
	SFJQBCgWk6dRAYaPpVI=; b=Tpp/9r6erYjYxFvSDtVS1EHSMQ7r7P1p+7XgImpu
	p9E8nV6tEzXhU8ps79T3GkLxQJ5FrQHuGXDuM8XVnN3ajP95nS7JI9gPofyzAZgG
	fdHWplV1TgKbrp02TPwTGD3ZYASObfY9JsHts8Eb/l8cEtZBitxF3DsSzbEVBy9W
	gy5XW/XQk5MN2ExO3s9uoj0IOcgaTwti86HjOen0FFrvL0JkMLjf+4Aj1GyrRXYe
	1jjd7mEwG3nIPTDxu2wAKz1xMC2aNkqYwxQ9eaoJEyaMXqqqAb2DW3ZF4oYuYUes
	TCMuJF4Fu9hAovIdeoYurt8ruSHbyoy1z2f5992dz6f7rg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5wdwphp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 16:37:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b109bf1f37so100683751cf.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:37:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756139824; x=1756744624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Al2oxJOnZAhMVrumUKzRD+aSFJQBCgWk6dRAYaPpVI=;
        b=QNO/u47cZl3C77J676zn+tVPDGjdUm+bFE/q/OogsBfn4hzHFDD9xfug44Wcl59Fu8
         V62Qynr6oi963x0xKf8gTkcDFc910w0UBoOjw93l/VrCrjC87Q1NaPqqhGE6qq7UO8Ve
         3pOeXFmcwZb80DSPS5q2NHMN0OX4cbcmnmLv33IFKD005I7RrSBQnNl9nxo7fKf7H9Uc
         WCg1DBOBUnxkVoxm3hksHGwZovOfzZ7EYHkDa1gWVZTiMQDU+rpUh+a3QeVV4ayPmGtb
         dpovJgOG+FvH5rtBXbaxtTqmxq3ME/k0px2arrnOMbsqPL4RxWnvR18mffF19CcAI0ZH
         oz8A==
X-Forwarded-Encrypted: i=1; AJvYcCXiJPRUx67DfopN+gy81jdWMjWtFlm9dsy2MbsIJUWOWdPYTcjm2CYOLPdb6LoaEd8ErymDavKQOaq4@vger.kernel.org
X-Gm-Message-State: AOJu0YxVpXQM4HfENSFyUZJgg6wjAqwEvCMEErBCtm1pg0yy3s7tfcat
	Q8sRQEMNccfCyHf2B446sik10Cf/3BIT/QLWp9Aui+XKRbPGrCeS+7NgH1OIwloGrNuSuFAyqn0
	J0XbHmXFX6eBMKwHZ58jmR2BCTgtBsFhLBhK95UELbiBO5wPFnP91CukDkYiWRVtC
X-Gm-Gg: ASbGnctpxYjAKJ5SbtsSg9pQk7rUpiuvbeGS8AdC+I5HJh5NfkZlSSn4nPn8ZANLYZ6
	ZwcXLuKxCGZNdng7ozrTTMIvFWl+dlw3SFcXi41YMGQrQXjCxXy2mLBD6/YUE8bZMv4pKy0Psfr
	qrUUxR5BeQWFNP77QyL8DRh1X1tAOiXbHZEEyHllGExnpCSnyHnpLPnmk1ySbUQyyhIfMHlslIL
	IcV9clyBV9u4JM9y0ujfwI5nQMW1tdwHuOvXCeJp49KdxBoPkDNR5G4ihoyRV6G9+QlDWacSILw
	EEAOl+vCGiSReAMgEP+60NAxRDNQsJKgfHR4SlBzYjmHk8mm42y2XRhkCyzwEJtDoZvmmtCdOZD
	ddCrZYL8sV19ddP9FB5w98RMW1FHaT4wPDdqwi3BFrEGGk5vZrVIT
X-Received: by 2002:a05:622a:1e8f:b0:4b2:9d9c:22ce with SMTP id d75a77b69052e-4b2aaa02db4mr139300291cf.5.1756139823284;
        Mon, 25 Aug 2025 09:37:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNgiczK9+T3+uY/OhSYAxvKM+2ASxtJBa+l/N+Chl24BMoQAUqd3jpLe8WyWI7QUA8L3jfgQ==
X-Received: by 2002:a05:622a:1e8f:b0:4b2:9d9c:22ce with SMTP id d75a77b69052e-4b2aaa02db4mr139299501cf.5.1756139822521;
        Mon, 25 Aug 2025 09:37:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c99ff5sm1666507e87.117.2025.08.25.09.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 09:37:01 -0700 (PDT)
Date: Mon, 25 Aug 2025 19:36:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-mmc@vger.kernel.org
Subject: Re: [PATCH v2 14/15] arm64: dts: qcom: Add initial Milos dtsi
Message-ID: <2bk7s43nrkmhhgsqq65mxhbmrapyjejyjugnae7wfbttqjmtbf@dk2fe64qrmwx>
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
 <20250713-sm7635-fp6-initial-v2-14-e8f9a789505b@fairphone.com>
 <3e0299ad-766a-4876-912e-438fe2cc856d@oss.qualcomm.com>
 <DBE6TK1KDOTP.IIT72I1LUN5M@fairphone.com>
 <DBE8G88CIQ53.2N51CABIBJOOO@fairphone.com>
 <DBOC7QBND54K.1SI5V9C2Z76BY@fairphone.com>
 <55420d89-fcd4-4cb5-a918-d8bbe2a03d19@oss.qualcomm.com>
 <DC74DPI8WS81.17VCYVY34C2F9@fairphone.com>
 <2hv4yuc7rgtglihc2um2lr5ix4dfqxd4abb2bqb445zkhpjpsi@rozikfwrdtlk>
 <DCBMOZQ7BFI9.2B3A3PEZ0DTYD@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DCBMOZQ7BFI9.2B3A3PEZ0DTYD@fairphone.com>
X-Proofpoint-GUID: vJjNmH8nSHgq25wHNvqz7wgQ45PhGl0z
X-Proofpoint-ORIG-GUID: vJjNmH8nSHgq25wHNvqz7wgQ45PhGl0z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXycoI/TwUYXyT
 WsOMDI9Xor6Cvra/qA+6J6U8j01JN9V0Kyj22lmfoOeap3UtafhNVXlEGFfSYS0ijQYj4AIskf7
 PUgoycRnRly/oxS67ql7JdIV81qFdlWyG1Ql3K0P6sXYKXyTv6pxV4ZbGPtZmeDSgNPZ4c/hBq3
 oF4M+GrJRw3DgiKxNjPVec44cvI7wUSbfghDp16udlgDz9y8uFFnZpspOiYlQ588/gBdXK3Szl2
 E3/xwmGpAQOE8nfE19OgCYHPzITM7HBaDT8YM88+Av36DuQxV1qCuLtBuCRg96b6JE0M8YZXS45
 NHz/XHrUxR8mFN86o77cFkrA+kANUvi461CmTWzcgk6GxUk9fCS0KjsMgOUMiP5e4Bcts2mj/S5
 JdP64uY7
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68ac9130 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=6H0WHjuAAAAA:8 a=HmU3_siD3n1fRUalNNUA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033

On Mon, Aug 25, 2025 at 05:53:53PM +0200, Luca Weiss wrote:
> Hi Dmitry,
> 
> On Wed Aug 20, 2025 at 1:52 PM CEST, Dmitry Baryshkov wrote:
> > On Wed, Aug 20, 2025 at 10:42:09AM +0200, Luca Weiss wrote:
> >> Hi Konrad,
> >> 
> >> On Sat Aug 2, 2025 at 2:04 PM CEST, Konrad Dybcio wrote:
> >> > On 7/29/25 8:49 AM, Luca Weiss wrote:
> >> >> Hi Konrad,
> >> >> 
> >> >> On Thu Jul 17, 2025 at 11:46 AM CEST, Luca Weiss wrote:
> >> >>> Hi Konrad,
> >> >>>
> >> >>> On Thu Jul 17, 2025 at 10:29 AM CEST, Luca Weiss wrote:
> >> >>>> On Mon Jul 14, 2025 at 1:06 PM CEST, Konrad Dybcio wrote:
> >> >>>>> On 7/13/25 10:05 AM, Luca Weiss wrote:
> >> >>>>>> Add a devicetree description for the Milos SoC, which is for example
> >> >>>>>> Snapdragon 7s Gen 3 (SM7635).
> >> >>>>>>
> >> >>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> >>>>>> ---
> >> >>>>>
> >> >>>>> [...]
> >> >>>>>> +
> >> >>>>>> +		spmi_bus: spmi@c400000 {
> >> >>>>>> +			compatible = "qcom,spmi-pmic-arb";
> >> >>>>>
> >> >>>>> There's two bus instances on this platform, check out the x1e binding
> >> >>>>
> >> >>>> Will do
> >> >>>
> >> >>> One problem: If we make the labels spmi_bus0 and spmi_bus1 then we can't
> >> >>> reuse the existing PMIC dtsi files since they all reference &spmi_bus.
> >> >>>
> >> >>> On FP6 everything's connected to PMIC_SPMI0_*, and PMIC_SPMI1_* is not
> >> >>> connected to anything so just adding the label spmi_bus on spmi_bus0
> >> >>> would be fine.
> >> >>>
> >> >>> Can I add this to the device dts? Not going to be pretty though...
> >> >>>
> >> >>> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> >>> index d12eaa585b31..69605c9ed344 100644
> >> >>> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> >>> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> >> >>> @@ -11,6 +11,9 @@
> >> >>>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> >> >>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >> >>>  #include "milos.dtsi"
> >> >>> +
> >> >>> +spmi_bus: &spmi_bus0 {};
> >> >>> +
> >> >>>  #include "pm7550.dtsi"
> >> >>>  #include "pm8550vs.dtsi"
> >> >>>  #include "pmiv0104.dtsi" /* PMIV0108 */
> >> >>>
> >> >>> Or I can add a second label for the spmi_bus0 as 'spmi_bus'. Not sure
> >> >>> other designs than SM7635 recommend using spmi_bus1 for some stuff.
> >> >>>
> >> >>> But I guess longer term we'd need to figure out a solution to this, how
> >> >>> to place a PMIC on a given SPMI bus, if reference designs start to
> >> >>> recommend putting different PMIC on the separate busses.
> >> >> 
> >> >> Any feedback on this regarding the spmi_bus label?
> >> >
> >> > I had an offline chat with Bjorn and we only came up with janky
> >> > solutions :)
> >> >
> >> > What you propose works well if the PMICs are all on bus0, which is
> >> > not the case for the newest platforms. If some instances are on bus0
> >> > and others are on bus1, things get ugly really quick and we're going
> >> > to drown in #ifdefs.
> >> >
> >> >
> >> > An alternative that I've seen downstream is to define PMIC nodes in
> >> > the root of a dtsi file (not in the root of DT, i.e. NOT under / { })
> >> > and do the following:
> >> >
> >> > &spmi_busN {
> >> > 	#include "pmABCDX.dtsi"
> >> > };
> >> >
> >> > Which is "okay", but has the visible downside of having to define the
> >> > temp alarm thermal zone in each board's DT separately (and doing
> >> > mid-file includes which is.. fine I guess, but also something we avoided
> >> > upstream for the longest time)
> >> >
> >> >
> >> > Both are less than ideal when it comes to altering the SID under
> >> > "interrupts", fixing that would help immensely. We were hoping to
> >> > leverage something like Johan's work on drivers/mfd/qcom-pm8008.c,
> >> > but that seems like a longer term project.
> >> >
> >> > Please voice your opinions
> >> 
> >> Since nobody else jumped in, how can we continue?
> >> 
> >> One janky solution in my mind is somewhat similar to the PMxxxx_SID
> >> defines, doing something like "#define PM7550_SPMI spmi_bus0" and then
> >> using "&PM7550_SPMI {}" in the dtsi. I didn't try it so not sure that
> >> actually works but something like this should I imagine.
> >> 
> >> But fortunately my Milos device doesn't have the problem that it
> >> actually uses both SPMI busses for different PMICs, so similar to other
> >> SoCs that already have two SPMI busses, I could somewhat ignore the
> >> problem and let someone else figure out how to actually place PMICs on
> >> spmi_bus0 and spmi_bus1 if they have such a hardware.
> >
> > I'd say, ignore it for now.
> 
> You mean ignoring that there's a second SPMI bus on this SoC, and just
> modelling one with the label "spmi_bus"? Or something else?
> 
> 
> I have also actually tried out the C define solution that I was writing
> about in my previous email and this is actually working, see diff below.
> In my opinion it just expands on what we have with the SID defines, so
> shouldn't be tooo unacceptable :)

I think we tried previously using C preprocessor to rework SID handling
and it wasn't accepted by DT maintainers.

I'd say, ignore the second bus for now, unless it gets actually used for
major PMICs.

-- 
With best wishes
Dmitry

