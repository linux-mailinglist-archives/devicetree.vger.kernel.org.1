Return-Path: <devicetree+bounces-199333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD30EB104DA
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEB2F1CC7BCD
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9001B275113;
	Thu, 24 Jul 2025 08:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EcsQUE6o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383522750F6
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753346516; cv=none; b=lNnwPNBXq2UqlM7s91exANHLMgqjEfmv/cF2ImUG1OrXaIOSjP2mwAqSGjdeqTXrbSeFXMgkGuv1OxPuTboZEWeODuEyolv6L7a0s847WNu81C5HtQAnvPz1UjfSQeKlebQ6ZAp309wHFY/KCnR3+zDpxvJvoYrJO6ttAQP/wvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753346516; c=relaxed/simple;
	bh=rnF+oib9L2Skeeylwk63DB1XU4v0B5lhktdPZQZmpLE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CzPjIu4J9aPw/LhBP2+eFESVS+pHsXArBw9hgdwX40v/S49XsEZXnK+jb1vPvqmNAbMI2ZoRywylAfSMh+gdoAZ0g0FqBLOPjYBXCF1WnzTiQn2SD+ENSgd5U/i0j6Nu+dRMmu2uosDcxSCuvq9TMu0Nqjad1of1K3fCzKaS/dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EcsQUE6o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXRMN001556
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NcSQxl+jVI7Me55KCzMwMtBdepNG4E+Ro3RKSYD+KgE=; b=EcsQUE6oQbOB6gV6
	fW/e8YgGlrgDCPe8iUIYyzlH1uzn9SPmPUnU+2ZfPKsBW6tH/Ck9pAdfr2SipWGI
	gnTv2/ZWNtn+tLNtKoYxPtE6JxXssP9L8/dSb9jGG3/8x5j5zQlAN/5odq9Er/Rx
	zMRa1rAYymBg7RREKjyl+ovZLSChN5CHnMQW843I4B/Z1etqA2DbAEHgrhM54sCv
	4bcgBT+Sq45J0Gqh6tAxnzz49whXpnbEWATBkH6ME4EjmlmsdQcFo1GR3pOubVLF
	fq6DjTVR3fugEK1hc0j4RPdQK3F1aNuPaw59RKl82uoGm0QJJi6CdqirS4ZjwAUA
	PtF60g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482b1uem5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:41:53 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-234a102faa3so7239015ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753346512; x=1753951312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NcSQxl+jVI7Me55KCzMwMtBdepNG4E+Ro3RKSYD+KgE=;
        b=em4Fsv+KHFl9VA1UgSa5QBlwvzskZrdL6/8lo9Lo+SpLLkJ7wCH//PutRBdZJ+Mrjp
         P2UNxiSAqfdFrXNATrraaVtrxnyZt1+Xq5LmtDtSuEquyrHSSNEsQZCU0o3/9t0osKwT
         BeHma9Cbo7qss/dASUb7l4zA+Egt88qWWABsXtV4A0j3G3dSWeM1lfqN3nL+j21gpxNd
         9vXE5LZI9nNueB9Ur6qvqWV15X3PsNNjyJ+mzLhY5FuPXei2D+WQ2mJFYHKEBowa+FiC
         5ObHcGGerTa0cD7lAB8b1JelxjmycSU601Tr5SD1rUsL7QtDQom7n+AjY0V09SI8Hqx1
         cZQg==
X-Forwarded-Encrypted: i=1; AJvYcCUiOV5Vb98jot9JC9H+zyFKlGikIDvKdck+fDQ1Bd03qjoQZgBxWmAPyEbhx71TTEEe+VnNqH2Yn7DI@vger.kernel.org
X-Gm-Message-State: AOJu0YzhN+6vnD4/dRtYJBaPCeem9Hqc5mPwimKdYIqMObIiV7ExjMeD
	tagfDWSq7RKgF6NgNBdcZkqmspDFtXtfAHdutadRNr2EVxVjALCGEMg8c1MaEZFOTW7C0biTdNl
	RuqXqZ4RmzkvwQzUATzfjk2q/Me5SJySXCWL5EbcnxfAmj20EJndCxKLOYJrjG1xwcJ/jjSSLtv
	EDIX95SDgqTYKTRLvjuj8RmC3cAGjqy4kHN2lu/Ro=
X-Gm-Gg: ASbGncvwtu3ckqAcoUqCLko9VMJ4xMBkKt0bk9ye5G9Z1dIgxt+y7EBdPvW2n4CECiO
	kbb2YkwYN+e9kOpAcMrTKzVvJEixcnFLyaliBMGVJv5w5WVAT26zEegBSNGZCEKNIRtq+HEE3RZ
	uTkybZi6dh6ZfVwyikU7n3iHf95KYav2Fvc90=
X-Received: by 2002:a17:903:40ce:b0:234:ef42:5d6d with SMTP id d9443c01a7336-23f98160d78mr85101305ad.23.1753346512448;
        Thu, 24 Jul 2025 01:41:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSyCdU8c5GLoMY06XIHDleMAFGJhzG6lduNlXjRkOM6bAsMFhgLYqcBatDA4hvNaRMBi5/zQqFRDpuPCkf3pg=
X-Received: by 2002:a17:903:40ce:b0:234:ef42:5d6d with SMTP id
 d9443c01a7336-23f98160d78mr85100995ad.23.1753346512006; Thu, 24 Jul 2025
 01:41:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722161103.3938-1-quic_rdwivedi@quicinc.com>
 <20250722161103.3938-2-quic_rdwivedi@quicinc.com> <2ihbf52nryduic5vzlqdldzgx2fe4zidt4hzcugurqsuosiawq@qs66zxptpmqf>
 <f61ac7b6-5e63-49cb-b051-a749037e0c8b@quicinc.com>
In-Reply-To: <f61ac7b6-5e63-49cb-b051-a749037e0c8b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 11:41:40 +0300
X-Gm-Features: Ac12FXzMKMuF_0OUA3EGJwZLmjVM8hRhGRUkVzF5il0fHysdmUBOWLdVHSEcSgQ
Message-ID: <CAO9ioeWLLW1UgJfByBAXp9-v81AqmRV9Acs5Eae9k4Gkr1U0MA@mail.gmail.com>
Subject: Re: [PATCH 1/3] ufs: ufs-qcom: Add support for DT-based gear and rate limiting
To: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=LdY86ifi c=1 sm=1 tr=0 ts=6881f1d1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10
 a=COk6AnOGAAAA:8 a=kyiDCW8mUpRo50OuNtQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA2MiBTYWx0ZWRfX7UlLKKxwnxcS
 aHjY5qCBH0YThwom7s7ZNN8VNfpj2/Vpnv0AhS+SnScrEAXjdpjkS2LEs8/EZt1sFMEnxucaC/X
 dVW5Z94dBNxGo8myCIAoFAS/xrLhdnmIMojjhgtglnLvskmeYbcz+fzemRf7gVMEuMjbw9EMv0b
 vMK3xFg2TS1aEl0QPx+zUFIjCEl4hZfuSJe8FyMGD82/QpF9Ouu4+c0OMyrRbec6uGEBBrsryzL
 wOa46NJZ82yfHCer25dj6tTFordGeS6UndKKlzoQ3v3d46WJ9pZwxa5buzC65YJ6Zc+pJT+vJWQ
 JTl/0FmhPp53MEI4Qv3Vb+z0aGiIx6p3zoUW3O60fFK3XNMv4fTpUAOcXUqtGp4DMevF1jo/67X
 kmpTbk7HFa7YkvDH7vYNrKNfkzbZb7PSBiyhYFt3nsZOi3+wpHWSkdZ/Xl0Cn+YHw5mfnXwt
X-Proofpoint-ORIG-GUID: DtD7Ac3FQWb_s1G02ucOEQffQzi7-ZnC
X-Proofpoint-GUID: DtD7Ac3FQWb_s1G02ucOEQffQzi7-ZnC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240062

On Thu, 24 Jul 2025 at 10:35, Ram Kumar Dwivedi
<quic_rdwivedi@quicinc.com> wrote:
>
>
>
> On 23-Jul-25 12:24 AM, Dmitry Baryshkov wrote:
> > On Tue, Jul 22, 2025 at 09:41:01PM +0530, Ram Kumar Dwivedi wrote:
> >> Add optional device tree properties to limit Tx/Rx gear and rate durin=
g UFS
> >> initialization. Parse these properties in ufs_qcom_init() and apply th=
em to
> >> host->host_params to enforce platform-specific constraints.
> >>
> >> Use this mechanism to cap the maximum gear or rate on platforms with
> >> hardware limitations, such as those required by some automotive custom=
ers
> >> using SA8155. Preserve the default behavior if the properties are not
> >> specified in the device tree.
> >>
> >> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> >> ---
> >>  drivers/ufs/host/ufs-qcom.c | 28 ++++++++++++++++++++++------
> >>  1 file changed, 22 insertions(+), 6 deletions(-)
> >>
> >> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> >> index 4bbe4de1679b..5e7fd3257aca 100644
> >> --- a/drivers/ufs/host/ufs-qcom.c
> >> +++ b/drivers/ufs/host/ufs-qcom.c
> >> @@ -494,12 +494,8 @@ static int ufs_qcom_power_up_sequence(struct ufs_=
hba *hba)
> >>       * If the HS-G5 PHY gear is used, update host_params->hs_rate to =
Rate-A,
> >>       * so that the subsequent power mode change shall stick to Rate-A=
.
> >>       */
> >> -    if (host->hw_ver.major =3D=3D 0x5) {
> >> -            if (host->phy_gear =3D=3D UFS_HS_G5)
> >> -                    host_params->hs_rate =3D PA_HS_MODE_A;
> >> -            else
> >> -                    host_params->hs_rate =3D PA_HS_MODE_B;
> >> -    }
> >> +    if (host->hw_ver.major =3D=3D 0x5 && host->phy_gear =3D=3D UFS_HS=
_G5)
> >> +            host_params->hs_rate =3D PA_HS_MODE_A;
> >
> > Why? This doesn't seem related.
>
> Hi Dmitry,
>
> I have refactored the patch to put this part in a separate patch in lates=
t patchset.
>
> Thanks,
> Ram.
>
> >
> >>
> >>      mode =3D host_params->hs_rate =3D=3D PA_HS_MODE_B ? PHY_MODE_UFS_=
HS_B : PHY_MODE_UFS_HS_A;
> >>
> >> @@ -1096,6 +1092,25 @@ static void ufs_qcom_set_phy_gear(struct ufs_qc=
om_host *host)
> >>      }
> >>  }
> >>
> >> +static void ufs_qcom_parse_limits(struct ufs_qcom_host *host)
> >> +{
> >> +    struct ufs_host_params *host_params =3D &host->host_params;
> >> +    struct device_node *np =3D host->hba->dev->of_node;
> >> +    u32 hs_gear, hs_rate =3D 0;
> >> +
> >> +    if (!np)
> >> +            return;
> >> +
> >> +    if (!of_property_read_u32(np, "limit-hs-gear", &hs_gear)) {
> >
> > These are generic properties, so they need to be handled in a generic
> > code path.
>
> Hi Dmitry,
>
>
> Below is the probe path for the UFS-QCOM platform driver:
>
> ufs_qcom_probe
>   =E2=94=94=E2=94=80 ufshcd_platform_init
>        =E2=94=94=E2=94=80 ufshcd_init
>             =E2=94=94=E2=94=80 ufs_qcom_init
>                  =E2=94=94=E2=94=80 ufs_qcom_set_host_params
>                       =E2=94=94=E2=94=80 ufshcd_init_host_params (initial=
ized with default values)
>                            =E2=94=94=E2=94=80 ufs_qcom_get_hs_gear (overr=
ides gear based on controller capability)
>                                 =E2=94=94=E2=94=80 ufs_qcom_set_phy_gear =
(further overrides based on controller limitations)
>
>
> The reason I added the logic in ufs-qcom.c is that even if it's placed in=
 ufshcd-platform.c, the values get overridden in ufs-qcom.c.
> If you prefer, I can move the parsing logic API to ufshcd-platform.c but =
still it needs to be called from ufs-qcom.c.

I was thinking about ufshcd_init() or similar function.

>
> Thanks,
> Ram.
>
>
> >
> > Also, the patch with bindings should preceed driver and DT changes.
>
> Hi Dmitry,
>
> I have reordered the patch series to place the DT binding change as the f=
irst patch in latest patchset.
>
> Thanks,
> Ram.
>
>
> >
> >> +            host_params->hs_tx_gear =3D hs_gear;
> >> +            host_params->hs_rx_gear =3D hs_gear;
> >> +            host->phy_gear =3D hs_gear;
> >> +    }
> >> +
> >> +    if (!of_property_read_u32(np, "limit-rate", &hs_rate))
> >> +            host_params->hs_rate =3D hs_rate;
> >> +}
> >> +
> >>  static void ufs_qcom_set_host_params(struct ufs_hba *hba)
> >>  {
> >>      struct ufs_qcom_host *host =3D ufshcd_get_variant(hba);
> >> @@ -1337,6 +1352,7 @@ static int ufs_qcom_init(struct ufs_hba *hba)
> >>      ufs_qcom_advertise_quirks(hba);
> >>      ufs_qcom_set_host_params(hba);
> >>      ufs_qcom_set_phy_gear(host);
> >> +    ufs_qcom_parse_limits(host);
> >>
> >>      err =3D ufs_qcom_ice_init(host);
> >>      if (err)
> >> --
> >> 2.50.1
> >>
> >
>


--=20
With best wishes
Dmitry

