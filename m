Return-Path: <devicetree+bounces-239372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37CC643D1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9AD4E4EEF68
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD476333457;
	Mon, 17 Nov 2025 12:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5Zq0zE+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MprJxYtp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73B2330B3D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383535; cv=none; b=mnstLSw+R+weJrhM3ozk2YTjA+knvX+YDZQCDBgRlnZJHwoCsOd8Y7Ueqa/xRh9nQOgGWfoiryQ6OGLsYKjXHLqyJJB62mE9dQmz+yZvM0wqVuKk5pVeImNu+zl5WKlKU9nnI0ZQaLat3KNyaDg9qAD2yBTa3Ly8RnFuIh9e2D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383535; c=relaxed/simple;
	bh=G94pcIU/bfNxMCPXXtJANALXKsfA+IFTkS5khTVBYEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AatLhfhmgtHstUiF2Mu7LMNgMIC2kv3m2r0NrEi48ovFyc4nFPg2g3RrylOU3oaUy0WnOSuHYttqVNCjoSURLmFEtUEpeXJ3lA8/yuXGq5YVw7o2TUYo3EUDRyeIrLGMu9IaMci6SoJewplw+7ly6BFUlKsQYD6x5LssM976zEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5Zq0zE+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MprJxYtp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHBj1Q13040289
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:45:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t2GIxjzEPgQtngG3qU0WnH6UZPnhzUOgfRwXYNTAgcQ=; b=b5Zq0zE+HoTRx7U8
	Ga+WXsu9BEEPjmBusOHFWVBmLXW3BSW2uw44nr843afrfN0mxsII8nzAxMSHI8oj
	ehx9lkwRw9jkh76b6Rwv//xgQ2mUlKwv9QOyBGpjujC11LtgBxZGaU1cSa8y4tsu
	1KNilYP/9ar1T6dWQGjrJzCQxD0FtYLLFtP6gH636kKbOse+v75RgmngtrxDBBIQ
	ROu72b34H5K26MWZqPnsauXscNBxnU57ApIF+EQWZRFkAmee94RhzsFbfizJT/zB
	ItN0d2Zlc7VVbgDpaVY7Y+lB5vkrAkIqL5gMl81YrkjTouxvRyHqOST27MCpjjIm
	hqlIMA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejh04r1p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:45:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b873532cc8so4932495b3a.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763383532; x=1763988332; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t2GIxjzEPgQtngG3qU0WnH6UZPnhzUOgfRwXYNTAgcQ=;
        b=MprJxYtpjEpe6TdxxeYTz0jUxiJbyFRr0Libu19K9fG/mVMNY//lUDlIajuvNGRbXG
         b5Qs/fNaxagDgJJ9AtWSmqwJC+kpbOS42Fnuq0erEezHdSEpVdKHpfuAVtfVjtacZOLr
         nwirSmEADqzvqr+COu1OjgI4Mh0mTxQa8cn3odGRP2bPODlDdqOMtlzPbyuMcBTCUKbl
         frb/2r34w1ZR6GjSO/RNFNVwPgIAy3NvUD/1z//QOVWhx2w2MGc5+/uhZhp6fg5rQ/rO
         nX9TQiEM/HcGaTjFZ0XCBd0nBHH1FtskY6AlhqYH1qQhWACOKOo+ZFlf/VLS20RZ0djh
         B1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763383532; x=1763988332;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t2GIxjzEPgQtngG3qU0WnH6UZPnhzUOgfRwXYNTAgcQ=;
        b=RVrni2p4CVt81z8MS2eoyWjIJ7tX9/Zau2kLp71x3g5tnDsabiSbUtvBbVywTc/gsI
         jnaRUsUK+zAbyYUbge2ul20xAie4UVTeMavacbyOlL+CIHvBRqceoLZ85OULlHcpSJnb
         IztHEJYASmiempG9+dFp46yFJnn/XFnOysb8/MH/kjOg4YSjh+OqiyxEbJ9cUGLD2Yyu
         7kj579qQHHFtICWZv57tCAH1SEuGhDEASoOMZNGkpTdPg/MT+8/2pLO1qrPrK/wRdVc0
         WmkthFN3kbuQPvlfw9V3r/RNRe5Tnos+vZkV4kc0mPQ/h3VGjZdh5tas1yCIP2J4tgIb
         ItHA==
X-Forwarded-Encrypted: i=1; AJvYcCXbRUnAX5IpqOxndfgtD/71N7tu9C7iNA0TiKbohqYEwsaxnuiwkhMs1tqrnLmhFdS5um2yaoR2kSAH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+ziTnhOJYDWCWDjXoGTzmikV+CPQLn2Yc4vIBxuqtRZ3BVGAM
	Tdwj9QtJW7ej55JYNvMpelVT8Hn/rfeCBXQ7xXjsb6EP0Hdho4nseumFEP1jllN3sFZUbTI6qEC
	XgMtPT9lhtoskMDe37hKfrkLqa0vkdJL+VdRbhRxjupzaWB90zVBa9wDUj5ZU8AxE
X-Gm-Gg: ASbGncs/2UQ5giu0rRDOPZ8IjbJSqw9I6rdXKbqtS7s427CLQcfmpIEGTXTRf1TJgpC
	ZjlltqfLBV8Q4yhC+yIZi2aULIgo5MtpA8Xg6IK2ZUdoS4R39Pnt6ZCRrOMR2KvpHJJQXN6LFKD
	0LRGvapxwofRSXGQvoQwWX2kOhNU19sxgCbpaoq4zfpJOUyvYzo0CdaI2PbAeb3dY7dH4Nghb0T
	H6XjtOkSzLYLyLfihZczet2mMb75HAhRqB8+AOugfJpNriz+rh7eIXUqEmKtr7WeUkXLybDShXG
	c/2SR+q2KAgB/L4iQO+IMniaOIHF4fQKS6qKChUddp/XNhZvFUx42htSdnQ4NhidsvjEuT9TUjM
	Gbyr3ZzGifh/B
X-Received: by 2002:a05:6a00:148a:b0:7a9:7887:f0fa with SMTP id d2e1a72fcca58-7ba323d6167mr15472543b3a.1.1763383531504;
        Mon, 17 Nov 2025 04:45:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDJbvN6jOsObid0beCDZHvRVXCcF/Syx9OjNHftPL31GJDCaNOSy040plNENpYw9lQsUyY0w==
X-Received: by 2002:a05:6a00:148a:b0:7a9:7887:f0fa with SMTP id d2e1a72fcca58-7ba323d6167mr15472502b3a.1.1763383531025;
        Mon, 17 Nov 2025 04:45:31 -0800 (PST)
Received: from work ([120.60.57.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927c23103sm12814553b3a.65.2025.11.17.04.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 04:45:30 -0800 (PST)
Date: Mon, 17 Nov 2025 18:15:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Baochen Qiang <baochen.qiang@oss.qualcomm.com>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
Message-ID: <exfmj52dqu3uctwsb2gopcjg7744vq5avlkahtmgfw4opw4mfl@t2svrln72u53>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <2fd84ab2-2e3e-4d05-add5-17930a35fedf@oss.qualcomm.com>
 <jnggqxqv3rjzhyevovnnxzplfhl3t6auhhvmoz7wxmsf6awgdx@dusdgxwsxvts>
 <b8277024-f9d4-4f17-946f-c2c390669067@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b8277024-f9d4-4f17-946f-c2c390669067@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=W9U1lBWk c=1 sm=1 tr=0 ts=691b18ec cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=SvArCPxluHhT4bP621h3eQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=W1PEZSGAYdG1hK9pKucA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: Sb8UTyHfI78XgJmtEiDclEKfRcWWhZvE
X-Proofpoint-ORIG-GUID: Sb8UTyHfI78XgJmtEiDclEKfRcWWhZvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwNyBTYWx0ZWRfXydWdM0ix2oGl
 sW6keiDazD49hJETSEJjDaTKgWAUL8SCH7qeCgnFUeqqdIuX1CujTTNFSiE5Tt+5nwmak3QDyQt
 B1xBiTNObAmeTAh2pERB5cinRyNFlC2/tSHknufbLinw2SzunQvi1gLRc3rB7SAnjSD47a9MIQj
 SxrI92RjLiM+6wyYToxkAAMcvCMy/+KKukGEB8SctYvl0Dj1iElbOqV4+zxVTXTZkBdiktDVjHH
 WPi6F0Lb+Xj124JxmC5MPXy2AAKIuA5Mj3TcdaEuSVtBuOtTBg5Y/I+PZhQo0rDNbuHBfaq0G6m
 KtSCeQh1C3pK99wxxWCTiK7+TLKIbRTHDVzPlOKDHhIRCGJgefvHUfhk8nrgu0YmzupDXeuW6f9
 oS7/P6qP5wK+B99qNdnhDxXZyNe4ng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 spamscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170107

On Mon, Nov 17, 2025 at 05:40:06PM +0800, Baochen Qiang wrote:
> 
> 
> On 11/17/2025 5:00 PM, Manivannan Sadhasivam wrote:
> > On Mon, Nov 17, 2025 at 10:36:39AM +0800, Baochen Qiang wrote:
> >>
> >>
> >> On 11/14/2025 6:22 PM, Manivannan Sadhasivam wrote:
> >>> Hi,
> >>>
> >>> This series aims to deprecate the usage of "qcom,*calibration-variant"
> >>> devicetree property to select the calibration variant for the WLAN devices. This
> >>> is necessary for WLAN devices connected using PCI bus, as hardcoding the device
> >>> specific information in PCI devicetree node causes the node to be updated every
> >>> time when a new device variant is attached to the PCI slot. This approach is not
> >>> scalable and causes bad user experience.
> >>
> >> I am not very clear about the problem here: is calibration variant device/module specific,
> >> or platform specific? If it is module specific, why the lookup is based on the machine
> >> 'model' property? While if it is platform specific, why do we need to update devicetree
> >> node whenever a new device is attached?
> >>
> > 
> > I think I mixed the usecase of the 'firmware-name' property in the above
> > description.
> > 
> > But nevertheless, the calibration info platform specific, and hardcoding the DT
> > property fixes the location of the WLAN card with a specific slot. For instance,
> > if the board has a couple of M.2 slots, users should be free to plug the WLAN in
> > any slot, not just a single slot where the property was defined in DT.
> > 
> > Also, if the users plug-in the WLAN card of another vendor, not Qcom, this
> > property is irrelevant/wrong.
> > 
> > PCIe slots should be plug and play i.e., users should plug-in any M.2 card and
> > expect it to work.
> > 
> 
> correct
> 
> > However, as I learned from Jeff, calibration variant property is also going to
> > be required in cases like router boards where each slot is dedicated to a fixed
> > band and the calibration variant is going to be different for each band for the
> > platform. So unlike I thought, this DT property cannot be deprecated. But going
> > forward, I'd like it to be used only in these special usecases. Most of the
> > upstream DTS have a single calibration variant for the platform and for those
> > generic usecases, this static table should be used.
> 
> If that property is not going to be deprecated, should it take precedence?
> 

If you mean 'it' by this static table, yes, it is going to take precedence as it
should cover the generic usecases. For special cases like the multi-band
routers, existing DT node fallback will cover.

- Mani

> > 
> > - Mani
> > 
> >>>
> >>> So to avoid relying on the "qcom,*calibration-variant" property, this series
> >>> introduces a new static calibration variant table based lookup. The newly
> >>> introduced helper, ath_get_calib_variant() will parse the model name from
> >>> devicetree and use it to do the variant lookup during runtime. The
> >>> ath_calib_variant_table[] will hold all the model and calibration variant
> >>> entries for the supported devices.
> >>>
> >>> Going forward, new entries will be added to this table to support calibration
> >>> variants.
> >>>
> >>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> >>> ---
> >>> Manivannan Sadhasivam (2):
> >>>       wifi: ath: Use static calibration variant table for devicetree platforms
> >>>       dt-bindings: wireless: ath: Deprecate 'qcom,calibration-variant' property
> >>>
> >>>  .../bindings/net/wireless/qcom,ath10k.yaml         |  1 +
> >>>  .../bindings/net/wireless/qcom,ath11k-pci.yaml     |  3 +-
> >>>  .../bindings/net/wireless/qcom,ath11k.yaml         |  1 +
> >>>  .../bindings/net/wireless/qcom,ath12k-wsi.yaml     |  6 +-
> >>>  .../bindings/net/wireless/qcom,ipq5332-wifi.yaml   |  2 +-
> >>>  drivers/net/wireless/ath/ath.h                     | 98 ++++++++++++++++++++++
> >>>  drivers/net/wireless/ath/ath10k/core.c             |  5 ++
> >>>  drivers/net/wireless/ath/ath11k/core.c             |  7 ++
> >>>  8 files changed, 115 insertions(+), 8 deletions(-)
> >>> ---
> >>> base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> >>> change-id: 20251114-ath-variant-tbl-22865456a527
> >>>
> >>> Best regards,
> >>
> > 

-- 
மணிவண்ணன் சதாசிவம்

