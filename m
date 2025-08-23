Return-Path: <devicetree+bounces-208477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBA4B328F9
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 16:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FDEC1B681DF
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 14:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E8D1C84DF;
	Sat, 23 Aug 2025 14:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O96QFiqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D964D2A1C7
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 14:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755957771; cv=none; b=sNgLsCtMnSe8YCtxrhubqQ3eXL8KkV8e5x7U8Z17A+unwXGfD7R2eJ0q9d+tG9+qBbTTmJ/DKcfZlsuhkK20WJTBVGV7yUIS/4lMYyeSrMHFUnzf/lkYGtzAyUn0fSbP7VN3Ja5OQdjMSPxNjdeIQzN2FFTW8UvkDRgUIhXPo08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755957771; c=relaxed/simple;
	bh=G5fd7cdRcXsw3R0TRmk1yTpamLF0smd4Y8CPaHSTnVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nH+RLJaaehvPrvV/A1DMWo5QDjduVuK3r/9fACt0iXsz6mirn9DZw9TA/FO/BBTB0Wr6aQ6p3avgU8VYgoz62AMEvUf826oMSxQEpOdiBMB0UqcZu435DL6iL7ofO355rRsQvZK0a/ExsC/hgqrBMi8+JQFrRwczEULLMscgb8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O96QFiqa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57N4lYZH000839
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 14:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OCRZx1xTVWUQojCBm1JLKKB98oSSv8fRJ7NiR1/l7Lk=; b=O96QFiqat4QPLZSu
	dkNSWguMMiiqftIPsCe3tf9OQ5Fcqx+mTZ5lIAK1fZCvoJflVvNw/gbBQAjgsWp/
	ZfVT4TmpFrQ0kFdXBitBFe4GRiOyH9+SFwWRg8vwyZQB8+Qsfaa8aZYsmomeVixJ
	0XxH/oCxSGcxsSpWq7j6QcqwwSXfV7lGTOqYXA7qSdF4aJEcyv/qQzedfNEMPfCm
	0oQB2F6243uzOBVgh8y69Gt+aVnqrR3h/CtHet6G/bBJtevEVd7pV8dwYhWKi/yi
	oemlcab/BaYyArA6SKTG+LWz+8RLAOOKoEHayTPypdXgiUwHKGxfHsDGfEI9p/Hj
	wxO+zA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6x80ugg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 14:02:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b109c7e901so67807441cf.3
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 07:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755957768; x=1756562568;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OCRZx1xTVWUQojCBm1JLKKB98oSSv8fRJ7NiR1/l7Lk=;
        b=jcCdcxVjcXuS5muTPDlE5mxfuajAdhW2oqBsFvmR3T4tmZhk7RlnxOXHnOF9O7mx75
         6xhtU+V13pYZyfsTVqJ++NsDQak+sBoycvCh3hPKT02ZnvCF+ebgjPSZ+fVNMMFeQ1PA
         Mxsvdc0pMiyKOau8wY4tq8fKz22HmECsEyB4jB+b55Ce3MAR+4GPHOAfH2Dn6ocibh3L
         FrvtKETFgT928giIj0y2YUqYSu/rmQBpzEV5VINlhumeGM+s1iWORafx7lwRNn2P0kVF
         X2TdTUBLwwajuFfGclvAidTFugFDEp9p0O/kmrZheXUAxSK7nC5prdMYMPcohAzoJfwt
         0j9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXVotolNrEsPT660mRFZpod/0zW8bGwx1103B+B7I2TIs4aOzdZFoDI6lpv8/HcUNM5apzftXrOa7dm@vger.kernel.org
X-Gm-Message-State: AOJu0YxTeeRgkuYem8YgjZhJE3dx/CqKYur+5hiiMyBPtWgFX/RONNQ5
	a+jgQlS4O0o40zWo2KATKBl7eaNirk8eiz1o49bnMBTA03Gk0rtt1IxnH5SVn2ll2hPXewSwdRP
	hah0Bae/5bJUkz4+wGSmyFOsx+hJoYKm4PhP6lvVixL64s5wz1j9ByVSHLknJ/65q
X-Gm-Gg: ASbGncufTvhez+wEuvA1PI3Dyc2WD7uuJVw2YbMDM36iPzVARV3DDZyN47bOsiMkDgN
	V2o7z0de92GczBqupnbDmFckDngg+0nRUPyIyAPq7tUyIaZg6R0kFGhciCdeCKbM7lraAh/BocC
	rYx+wl9fXt6LafBV4EuLojnCtaOW8a6n4UtlsPlrs8mTACF7cMXVbsnAXlsfGMQUYw5elZ0D9MZ
	UwNxKKYZvbElqmtScN7or7SHyYF/0qAPtS92c3nX/a7AyzRSMWECVp6jxCF+uL+cjUy1xkgc3U7
	aK156UNECZPFFFKsQkSdp6soxLhpsR0vsmbNHZPcQNqM+e5Gh4gZysAI9ybdDyDxrpXKAjiuM5s
	fiXcZfE9/yvj2nyxMWgaPjy1ZfS8s4788InJ1yo/t7otdEUdsK9Az
X-Received: by 2002:a05:622a:1a29:b0:4b2:8ac5:2581 with SMTP id d75a77b69052e-4b2aab767cbmr78243361cf.72.1755957767185;
        Sat, 23 Aug 2025 07:02:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuxkgrNE8H6oitbqT5fcV9B40V5lDNZqFSqo148MvQDpZXw6ohwF9nhCLlg15uxNzY4nVbeg==
X-Received: by 2002:a05:622a:1a29:b0:4b2:8ac5:2581 with SMTP id d75a77b69052e-4b2aab767cbmr78242621cf.72.1755957766556;
        Sat, 23 Aug 2025 07:02:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bffae3sm532128e87.31.2025.08.23.07.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Aug 2025 07:02:45 -0700 (PDT)
Date: Sat, 23 Aug 2025 17:02:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xilin Wu <sophon@radxa.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Message-ID: <k736p6h6dzy5ywepcgcr64llusqkrrsknf5h4o2e6zcpcyqpz5@7k7kmhumzcw5>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
 <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
 <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
 <8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com>
X-Proofpoint-ORIG-GUID: 5gViv1ET5PgUrY82170_AuOk4k6AtnXQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0NCBTYWx0ZWRfX5vDNcJBUk8AH
 SfG5Ks9prDSxr2p1nB/tC7FgD2rdwqypR0YO+sTAbKP8zk/d730Z03sD9Y6bfN8yGQrqKWfiY7B
 rIPLUUMIKIRpvkpFigG92c9n9UN4lWuN+hUlgBAMkVStvyGzqMnfw4pSMiMS3aplUCpy5ICPyNg
 tikdPIf/b5915D7UcoIWjfZpj7+PWbM5rHiq1VJpFWI2+5BLeqwVpQXyljxSmjW7PiTIwXhS5Ar
 BrzYTQvWioW+aWElHGuGaBpcq1Qt+KTnec+LLRtq8lfhySqPS/JXBQWmbnD6qvvB5Uq2GQjP96U
 GNU+u5yBQTkp3fqotVHt5k/jkWFFwzGHa1n6XbQO3O0KRZi49SZt6Huv3LOgnzFF/A83PR1uQqI
 RF8lEKeu
X-Proofpoint-GUID: 5gViv1ET5PgUrY82170_AuOk4k6AtnXQ
X-Authority-Analysis: v=2.4 cv=Ep/SrTcA c=1 sm=1 tr=0 ts=68a9ca09 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=ksxQWNrZAAAA:8 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=ygyPkNainPlaNWTsy8gA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=dawVfQjAaf238kedN5IG:22 a=l7WU34MJF0Z5EO9KEJC3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-23_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230044

On Sat, Aug 23, 2025 at 02:22:56PM +0800, Xilin Wu wrote:
> On 2025/8/22 19:02:21, Neil Armstrong wrote:
> > On 22/08/2025 12:57, Dmitry Baryshkov wrote:
> > > On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
> > > > The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> > > > of a combo glue to route either lanes to the 4 shared physical lanes.
> > > > 
> > > > The routing of the lanes can be:
> > > > - 2 DP + 2 USB3
> > > > - 4 DP
> > > > - 2 USB3
> > > > 
> > > > And the layout of the lanes can be swpped depending of an
> > > > eventual USB-C connector orientation.
> > > > 
> > > > Nevertheless those QMP Comby PHY can be statically used to
> > > > drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
> > > > 
> > > > But if a 4lanes DP->HDMI bridge is directly connected to the
> > > > QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
> > > > probbaly be USB3, making the DP->HDMI bridge non functional.
> > > > 
> > > > Add a property to hint in which layout mode the QMP Comby PHY
> > > > should be as startup.
> > > > 
> > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > ---
> > > >   .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |
> > > > 13 ++ +++++++++++
> > > >   1 file changed, 13 insertions(+)
> > > > 
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/
> > > > qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7
> > > > 100644
> > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml
> > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-
> > > > usb43dp-phy.yaml
> > > > @@ -76,6 +76,19 @@ properties:
> > > >     mode-switch: true
> > > >     orientation-switch: true
> > > > +  qcom,combo-initial-mode:
> > > > +    description:
> > > > +      Describe the initial mode of the Combo PHY configuration.
> > > > +      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
> > > > +      sharing the same SuperSpeed lanes with either DisplayPort over
> > > > +      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
> > > > +      technologies in a 2+2 configuration (usb3+dp) as default.
> > > 
> > > SPecifying this as an initial mode means that it can be switched later.
> > > Should we generalize this and desribe it as bus-type (from
> > > video-interfaces.yaml) and allow it to be present only if there is no
> > > mode-switch property?
> > 
> > I was not sure about that, and yes we should do that instead but I'm not
> > sure about how.
> > 
> > bus-type sounds great, but the numbering doesn't match so I was thinking
> > instead
> > something like phy-type with a string or use the numbers from include/
> > dt-bindings/phy/phy.h
> > 
> > The thing is, do we want to keep the dual dp+usb3 as static ? I think
> > it's very possible
> > a board would connect the combo phy to an USB3 A connector and a 2lanes
> > DisplayPort connector.
> 
> Yes, our board (Radxa Dragon Q6A) is using such design, but with usb3 and dp
> lanes swapped. [1] I think this patch series could be extended to handle
> such configuration.
> 
> Currently I just change the default orientation to reverse in
> qmp_combo_probe. [2] It works flawlessly. But of course, it's not an
> upstreamable solution :)

I thought about using data-lanes in the QMP PHY, but then I realised
that there is no way to use that property to correctly describe all
these variants. So, I think it should be the bus-type of some kind.

> 
> FWIW, Rockchip usbdp phy binding [3] has a property called
> `rockchip,dp-lane-mux` to support such configuration.
> 
> [1] https://dl.radxa.com/q6a/hw/RADXA%20Dragon%20Q6A%20V1.20%20Schematic%2020250621.pdf
> 
> [2] https://github.com/strongtz/linux-next/commit/928cd166ce81aca7f8e051c72eccbd84ad896d98
> 
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml#n53
> 
> > 
> > Neil
> > 
> > > 
> > > 
> > > > +    default: usb3+dp
> > > > +    enum:
> > > > +      - usb3+dp
> > > > +      - usb3
> > > > +      - dp
> > > > +
> > > >     ports:
> > > >       $ref: /schemas/graph.yaml#/properties/ports
> > > >       properties:
> > > > 
> > > > -- 
> > > > 2.34.1
> > > > 
> > > 
> > 
> 
> 
> -- 
> Best regards,
> Xilin Wu <sophon@radxa.com>

-- 
With best wishes
Dmitry

