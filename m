Return-Path: <devicetree+bounces-242420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 465C2C8A242
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D92523A301B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E18E226D18;
	Wed, 26 Nov 2025 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O5uUQ9t0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QrX7p4kp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFC521E087
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764165844; cv=none; b=ts6+Nx844zSUOLnDSZyLax/sMhbEkTx52t5D25dK1TjLWMXdhVeLhDZ+3IKIhQXAD1cLadnhOSgSkelx4xiYPzMSeh+JKly8KuffZln5WiXu3og6S8oQMypmTMA8zsKLYwd0Vp1LzU50vPrXkNVmWEIZlkhgpsz3M/VWCSqPfwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764165844; c=relaxed/simple;
	bh=8v1x2RS2pjT3QKt9mvzTfTrPxDuF/2BMWOoPGs7cASs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fMkLQpK+5HbI0fN3Mts4Tp6Zjzuq8giY0ccWkRWPkStP9Mt8ts+yn25/pEsAbYyt8NuAeJfg8z79bnO6WmGiKcC9285utx4cwRTC3cz0zh/pFPcRpgHkeOpK7A1N8cITKUbcZ3wcKkE/C0nU9M0j/ckBWLMj9E71xGmNAeoa1q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O5uUQ9t0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QrX7p4kp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQACgvV3317751
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j4Pu61FlX7ik1HTPqKufvU6avYQgm5W31lthRKIaR6E=; b=O5uUQ9t0jKDO1yBw
	NoMLZMVCy0T2XEbjHzAadosxwOexC41Ckz95dn937mPdH3F+/cG6RtPsVu9ataZW
	XTAF2FUTDSCE3uMdAaTliiMb1fh7m+wU64VhH1DV0nXl7OgtI9tVzJczewYsQseg
	54RUtXGey3mEfMwvJqzzd5LuSYP4Xex5t2rg+SGyArKGRsbosR0NrlDXvSo5ay5s
	7AIFkM2IGKNV/uhCCaf4+EMIXMrdIYzO/HqN8XOQYToyZoCgi/lHM1itKhsN3l4r
	LaxYFyRwhCrOOX7vXrb8sx9JNk+eXfD6HjKsGQNE6V/HhXDAvpMCn+5ZIGDA3qVn
	B1/6KA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4and2qks2w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:04:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e2342803so1730414985a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 06:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764165842; x=1764770642; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4Pu61FlX7ik1HTPqKufvU6avYQgm5W31lthRKIaR6E=;
        b=QrX7p4kpGsVyWhvtwVhgG88Cquxk0nkja32EECfsltu6xXnAsJt1wdoOhQzUV+ow+C
         4oUqS+paPeOgHpQ+OFmlcNWZt+/93nJoHB+ouVOimSkZqAkY8EGkzmjsqyzZg3k+dFRK
         cFP2hAbps9+dlUC+9TylcTodF3e7iA5VBlSclYRD3uuvUMt4AOg1NHlAPkkHERxrORNz
         WJvcmL7UVcqKVMcZebi/F1E+zqGgfQtCRtHXgZiBxxwIYzIxfy0jKfacAB6qgnj219RD
         +j9l+HGCe7bK+w65fPigAs5Z5JRFEtJT35JTLDzTZ1l18EAwXStQXgHkFOPuHkochG4r
         3VgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764165842; x=1764770642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j4Pu61FlX7ik1HTPqKufvU6avYQgm5W31lthRKIaR6E=;
        b=jaedWxCnMwGRsCesevIm1h0eCU8TthpT/HDw1cQaXIceHvTwWxNAK5aEBBnWJwplD3
         ADFCs5+d3SuNjMsJ8avfUMcrNJagkVMOvGGZfeKhK9FrZqDet3sG4pIQU0bALGCoS3Lg
         Bc31xhfbro7wIDG0auRO6/jlCnrI1bzijLZmYgKgu1bK87iEJS5QX3acWQnJZTFd0Qgi
         Nx9Tm4C6SE3ndVliyGK3gnKrpJJhIftZpRW2lN7c7po6we4i3Y0NfmeVwpVoiEFGhyBE
         ukFa3mwzxxA3ZzgYIZ6lkYyt/vpxmwIDHX31bECaciuvgGaIsn0bW3yGqutx+knLR43V
         NYWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrDlzBMPceRChi4w/q6c+n4W8SRH8wbBwO6EZicn69G4Pijfz/owwbeSglI0/jtd3Ih/A+rAKPYQjg@vger.kernel.org
X-Gm-Message-State: AOJu0YyjtykfqHz9JAsrB3sSEkkJ21Y/oyq7sDao7n6viSEvGoaeFO/A
	riSAZorfdwM8DQMMbREhkH7ETMuHWtuy4egT/3BlYPVEm7lRbdAHYTHL6tIGk2cNsd4qjyrIFhA
	LjvawKtqD69nprkc2qIXSqxcR1jHg9fwoVI8weC4KXnFWcGlcHYhy7etQPpbEO5Zszxg7uTtreH
	9Q7a5A/tww1ZKc69GOAluovn5iPZAr1Kmt8IrRgDg=
X-Gm-Gg: ASbGncsMF+fNfYXPEF28st/X1FKfvz2sOrhdeAj7FPnWErZyve6ziPIx0Pc3WApiKhQ
	nYhDykwwp0uWlUmxLp7ZaeEdauVt4apmpLwFjad5svBUfTHiN1MO+xMFDS/b+6ujWMjrhSvHZDp
	m61rbG+gKb1bJukR4sjSeBIG1F50vWxpEnU4DnNn39MzZA16wAgtiMUOtpBmacb4xK8W/kBPLGp
	Cx8TE3YSExzpTKNBoE6uzZCtao=
X-Received: by 2002:a05:620a:404f:b0:8b2:e922:5297 with SMTP id af79cd13be357-8b4ebd6fd06mr928363585a.21.1764165841573;
        Wed, 26 Nov 2025 06:04:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsbcB5py6KG3ibgJ3gEgq7um1CGHVok1rTCxoPdVhPI5x/5mvjr3hUdeJyz7HAPgluh6fFxRrAfnZqtAPHkl0=
X-Received: by 2002:a05:620a:404f:b0:8b2:e922:5297 with SMTP id
 af79cd13be357-8b4ebd6fd06mr928355185a.21.1764165840892; Wed, 26 Nov 2025
 06:04:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
 <20251120155825.121483-7-r.mereu.kernel@arduino.cc> <45329a9f-545b-4425-9667-26bceca67982@oss.qualcomm.com>
 <CAKA1Jha7HuEC-KgGktmuiG-U0ZVbKnmLU4bXTwLg+paoLpQ=kQ@mail.gmail.com>
In-Reply-To: <CAKA1Jha7HuEC-KgGktmuiG-U0ZVbKnmLU4bXTwLg+paoLpQ=kQ@mail.gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 15:03:50 +0100
X-Gm-Features: AWmQ_bnu7I2BV-0kj-pM4cBdPYEuUByoq8WpKikAvYHg-1WklPoc-0N_i0hL9x0
Message-ID: <CAFEp6-0kHtbXKQRtaLUB1bqRV5s_c_bcoAWPdTOH3JvV69rUqQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino unoq
To: Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org, linux@roeck-us.net,
        Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDExNSBTYWx0ZWRfXw/WZ3EGgoDb7
 EScJaO3iWtgZLBnUO4ij4r3wi8/kgcCcIEqhXJfEvcurkiKmYgusQWOJfUVxREJDyTTp7I4MfO9
 90TBRSNUlq/B0cCMHp+7oRzCVxZ11s5Xw8V2Doc78QwKXJjQO6ZV/JS8jGONHW47dbU7YxQpJIz
 22JjVZgdbCr3zHmGRVuYOxP6LYSzYH9XBo3RV7fw6iGck/UwXiKSWNU8dxuY87OANrSuW5gPEUw
 4KWWmorYlMh5duRSPXnnQBjJBapB+lymG+ITqqaatSEbh/Rhk6ufcPyMGDhfWg7cQ67/UFj9qLD
 VsCuJbujJubFOH9uhILMGXMYBJmh5m2tyzxfJrx19T0E7htjMfyoWMVJA1AbadG5Mhm6bA7DInM
 6Msw/qc0tXvO2ZA3LgO5547elN+BAw==
X-Authority-Analysis: v=2.4 cv=dZyNHHXe c=1 sm=1 tr=0 ts=692708d2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=JSZs4kpC3w6-UMKaf54A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ToCc6gIWhRRDr0ODYF4Ep-Q5OcDljDdK
X-Proofpoint-GUID: ToCc6gIWhRRDr0ODYF4Ep-Q5OcDljDdK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260115

On Wed, Nov 26, 2025 at 10:28=E2=80=AFAM Riccardo Mereu Linux Kernel
<r.mereu.kernel@arduino.cc> wrote:
>
> On Mon, Nov 24, 2025 at 12:44=E2=80=AFPM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
> >
> > On 11/20/25 4:58 PM, Riccardo Mereu wrote:
> > > From: Riccardo Mereu <r.mereu@arduino.cc>
> > >
> > > Arduino UnoQ is a single-board computer combining Qualcomm
> > > Dragonwing=E2=84=A2 QRB2210 microprocessor with STMicroelectronics ST=
M32U585
> > > microcontroller.
> > > Support to a simply boot to shell environment includes:
> > > - UART, I2C, SPI
> > > - onboard LEDS
> > > - eMMC
> > > - WLAN and BT
> > >
> > > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > > ---
> >
> > [...]
> >
> > > +&wifi {
> > > +     vdd-0.8-cx-mx-supply =3D <&pm4125_l7>;
> > > +     vdd-1.8-xo-supply =3D <&pm4125_l13>;
> > > +     vdd-1.3-rfa-supply =3D <&pm4125_l10>;
> > > +     vdd-3.3-ch0-supply =3D <&pm4125_l22>;
> > > +     qcom,ath10k-calibration-variant =3D "ArduinoImola";
> > > +     firmware-name =3D "qcm2290";
> >
> > I'm not sure about this line but otherwise this lgtm
>
> This should be fine, I'll gently ask Loic (added in CC) to confirm that.

Yes we need to use the firmware APi file under WCN3990/hw1.0/qcm2290
as it has the correct configuration for the QCM2290 platform.
From log: The wlanmdsp for QCM2290 / QRB4210 platforms requires
single-chan-info-per-channe feature bit to be set.

Regards,
Loic

