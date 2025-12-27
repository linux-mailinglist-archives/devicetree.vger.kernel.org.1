Return-Path: <devicetree+bounces-249911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B231CE02FD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 00:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7811C300387F
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 23:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B718E24BBE4;
	Sat, 27 Dec 2025 23:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f/iWcOfl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ejBDEQBg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3200725776
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766877883; cv=none; b=EXxIrcYIQL8zi7pXiAD3CA9drv4sv6hsbgrrg2o4I6IKp770M/rSvgXhJaxs0HBColWjtI1GoZfPt2PSgcs5bPrrs4iUyn7QFA9QQKN5z+VzGx2D02MuRLgM7ulxYI70KWEfGLf1O8FYT9qG2XiZm+IISqniJoA/taNFpJSb9aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766877883; c=relaxed/simple;
	bh=dkpib39LfAPFVcX2qI/sL3l9+aaH/QokeukzFEABUFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C/GoLYqQrqrvIsz5abXDmdL5Pv4TIXC2z7dYGNvl8tCmu25JgaSnmft30sTtnQcEj53ij4TpG19nxcwO+MocPcL5vFJHV3Kk9mWGcsgf847twQkNO0DFSMyuFYHfVEliJwDqng3KOSMQyogyFanaMBVBLT9mh6bM+wEtItyse0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f/iWcOfl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ejBDEQBg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BRJtJ4i103316
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:24:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6CjiYXPrKtqb59Vsb62XoJU/
	b2MptT7N0bil41waJJw=; b=f/iWcOflbFtMH6x8euatBMwkQJabbI2Gf9bxX2s3
	bzoBMLFh6x7wCuGzseTOb7/F3wp/Tjp/TeE5fpYoomk88gn4ohhAeEJJ6MTLJRG+
	kktf9xC5/SmKv2aUMNCtQbSHHmZsGw9XiBep3alqZL8ylHqCJTz/EW2+oSJNW8yV
	5skQF4i5UJHkbE0HtAWPJ6qxOS/zDu+gcjRmmtKCncbMFi0uh40Ra7W/lOPOyRQA
	zzS3uFjyB9/bfHVk8ZT98TsM/YFOz9FeyUQPFlPZt4mPlGyQRmDZKutunsQKWvPi
	Ucdzy6kP/vzxNLd8XvSGG60/VsF8n26HRk3ze6j4p9P7aw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba8r695vu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:24:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3dfe072dso216454611cf.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 15:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766877880; x=1767482680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6CjiYXPrKtqb59Vsb62XoJU/b2MptT7N0bil41waJJw=;
        b=ejBDEQBgCyRPw52OpQPlCi0Ird+6/iOsqwe2kG0u+fIvCCj5xOzjm1kwFYVc1DYhQq
         j7IWh67GosLMCzJwJdEErv3fpYkQDFV0MPuCmO1e/Dt7hwfoAd70gfuPY40ocxTBV/oE
         96WVKPXFsaTA2YSs3N7HfJz5B0jSWpBM6d4wyemuGFtYWiC0CJL0jNZ2fUPdoEP4nBnR
         SFiuAMjFj5RFtzCemSw1OcXemTfaT3cTl5j3Rr035K/GhWL7RW7VDK90rLiHBVEncWxy
         GwfhuhEdyk6I/JwDl1fEX8SZxnBDeBKjrN4Ktao1XSwJiJoFTZfCbPIGtDG/6cC9xMA8
         CY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766877880; x=1767482680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CjiYXPrKtqb59Vsb62XoJU/b2MptT7N0bil41waJJw=;
        b=NcP1A5wqrKytDSn3cq5Yp2LsF4ugDXpAcvC9P1p2lFzEKSC9zCSLlc2aesw0L4cijE
         SOyT0nc+wiCBzKr1PASSLAHrndvUGnbYt0gM2aLVTLCt8W7DYuuQfEm9SXpZ1hFNwXZ3
         TP3PWgbMT1PGmnVgn36P1M539MSWc7t3yqtKla4Hpilmy9QNcaRQOG4k04NvSIsqBqgx
         adyCj7AFfJKv36Xg0o74/V93EA3Q8r8ykuyiosmrCm3ikaUMPZChwDHMGl14DF97RgIM
         fxUSv58nAuAKcAHFGp4YlSp6r5nLyNueYn18Ybb7+vxokxziGeLSFkP7BJfayVkwsvRw
         cLwg==
X-Forwarded-Encrypted: i=1; AJvYcCUxRlbp/oupa4aUH0vXt2uAg32/x9Lu6kq/Tuu1vbWXTugPrxtSZYekfUOUaf2e+uFvihqa17uEwng7@vger.kernel.org
X-Gm-Message-State: AOJu0YxeSV9v8bCp2irwyS4llS+ybHVjHkfIc3i937ZTGLZrtC7sYshu
	wChyP5mkveULdft/QQoGjVNuCzqwiTg/EHILU6/INSYddEaX30jNdorbG+LEuTueAiqst6YIV3l
	7GtbVtwA0dHj0QHecKWFmZr1nnpZO/G4a7bdf7p1NAepyvNUI/7Ui4VcnSMzZ61Fv
X-Gm-Gg: AY/fxX781BKotIEoxTStQA4F+EF7BlzfFkd1cHmVrAiXXsYzaDk4tbIxPapAnMZ55/b
	tnNOMvSl1inmMAvdWok8dtDo50B6sLQlfJSSmJbINF/760OujiIsV+0s4dahkYTau6lmE5ZGQiE
	vlqAMXkYsf7u1Q31A0xtkXfDuxnUsU1a8VMaoR9g9huWhVgNHJVwRV+5fKc2FJBQ+Dxtp29aV9a
	M+n4qeMBNsACsTUQ3VPi3ya3khX3hpVPEoZUi0HO2LCmyuusQZUpjWRobuW6tJ/bxX2n79Zxx5k
	i6yR7Yzj3IynOTBc0ezJO9omdkfFfDyFW0f98hfQ9bSu6vpZU2xbG4i2F8MTTqqQsbcWtUbwOA5
	yLUGgco3bPV8O+eWyGmr7id5AtWeZS6dzJjrVnGe27QdN3hPqA7KP8lJPa80XaScWin/1PRMUZj
	BfE/W8VlnCv8Y5NTUIs/jvQfw=
X-Received: by 2002:ac8:59c1:0:b0:4ed:b0fe:6e67 with SMTP id d75a77b69052e-4f4abdb25b5mr369481011cf.69.1766877880264;
        Sat, 27 Dec 2025 15:24:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGq4sszRVz+cR+XKY7cwM2oTqASKbeUZdXL4s+7Hsssumzgwtd3DSQx5SHvP+tFFQiWDO1uA==
X-Received: by 2002:ac8:59c1:0:b0:4ed:b0fe:6e67 with SMTP id d75a77b69052e-4f4abdb25b5mr369480731cf.69.1766877879779;
        Sat, 27 Dec 2025 15:24:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f09fsm7816633e87.67.2025.12.27.15.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 15:24:39 -0800 (PST)
Date: Sun, 28 Dec 2025 01:24:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
Subject: Re: [PATCH v7 4/4] misc: fastrpc: Update dma_bits for CDSP support
 on Kaanapali SoC
Message-ID: <inqtsuiwvbcplhvssn5fs3n4giekcrj3eljkmogko73tgbfzaz@iuvn2h2ezcxn>
References: <20251226070534.602021-1-kumari.pallavi@oss.qualcomm.com>
 <20251226070534.602021-5-kumari.pallavi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251226070534.602021-5-kumari.pallavi@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Raidyltv c=1 sm=1 tr=0 ts=69506ab9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IFhsdl8TXimEBemdgfkA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 4AHZCc6tCd_fsE-0SzkX07kd9TyO7fB4
X-Proofpoint-GUID: 4AHZCc6tCd_fsE-0SzkX07kd9TyO7fB4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI3MDIyMyBTYWx0ZWRfX+vaGk38toYUG
 2oT7+S0NQ1+VgwpXy3cJ7Pp6QNt34qu14W25DAsM1+yYh8i1m4fMmfdvjhknmujv5Tv7Gi/cejM
 R6WhHeQb8zsupkPUq17ZsmYd2PddlnPSXSafrg6NUPpPGtL65UdAJG5zCl7n1RpksLJWa8AP/FN
 JHa4jcwMqu8IvTYzhFn2BORC3aLuyLU4hhI9DIyr+8LaTuTIFS9JRRGiX2anA5lCkwC4bURPkQW
 aeCmRufdtqN2v4WRSrGkTf3pKEjxma5cArn7V3/yLThHuhvybNTs/JBDKgebtgUobOxx8bdQSYN
 lWL402vKhufm5T97/l23job1k3qrJ+cDuHWcRcpDBjvE0TO370R9L6idsxgE4u3Zdf+gwhAkyIV
 fwvSITmoiT+jUl60OR7C6BWhcc44mEpI5djS//0y7iDhwi76erh2THpbYjVTMfWj0QQTOOVbf30
 4No36NcIPAte6zf9bvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-27_06,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512270223

On Fri, Dec 26, 2025 at 12:35:34PM +0530, Kumari Pallavi wrote:
> DSP currently supports 32-bit IOVA (32-bit PA + 4-bit SID) for
> both Q6 and user DMA (uDMA) access. This is being upgraded to
> 34-bit PA + 4-bit SID due to a hardware revision in CDSP for
> Kaanapali SoC, which expands the DMA addressable range.
> Update DMA bits configuration in the driver to support CDSP on
> Kaanapali SoC. Set the default `dma_bits` to 32-bit and update
> it to 34-bit based on CDSP and OF matching on the fastrpc node.
> 
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> ---
>  drivers/misc/fastrpc.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

